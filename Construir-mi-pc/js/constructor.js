
const madre = "madre";

const cpu = "cpu";

const ram  = "ram";

const psu = "psu";

const almacenamiento = "almacenamiento";

const grafica = "grafica";

const cpu_cooler = "cpu-cooler";

const caja = "caja";

var consulta;

$(document).ready(function (e) {


  if(localStorage.getItem('piezas')){
    restaurar_selecionados();
  }
  else{

    consulta = { "consulta" : [madre], "id_g" : null, "cache" : '' };

    AJAX();
  }

   });


  

   function restaurar_selecionados(){

    perfil_madre = JSON.parse(localStorage.getItem('piezas'))[0][1];

    var pieza;
    JSON.parse(localStorage.getItem('piezas')).forEach(pieza_cache => {
  

        consulta = { "consulta" : [pieza_cache[0],pieza_cache[1]], "id_g" : null, "cache" : 's' };
        AJAX();

        
        pieza = pieza_cache[0];
      });

      
      selecion_cache(pieza);
     
   }

   function selecion_cache(pieza){

    switch (pieza) {
     
    case madre:
      consulta = { "consulta" : [cpu], "id_g" : id_g(cpu), "cache" : '' };
      AJAX();
      break;
      
     case cpu:
      consulta = { "consulta" : [ram], "id_g" : id_g(ram), "cache" : '' };
      AJAX();
      break;

    case ram:
      consulta = { "consulta" : [psu], "id_g" : id_g(psu), "cache" : '' };
      AJAX();
      break;

    case psu:
      consulta = { "consulta" : [almacenamiento], "id_g" : id_g(almacenamiento), "cache" : '' };
      AJAX();
      break;

    case almacenamiento:
      consulta = { "consulta" : [grafica], "id_g" : id_g(grafica), "cache" : '' };
      AJAX();
      break;

    case grafica:
      consulta = { "consulta" : [cpu_cooler], "id_g" : id_g(cpu_cooler), "cache" : '' };
      AJAX();
      break;

    case cpu_cooler:
      consulta = { "consulta" : [caja], "id_g" : id_g(caja), "cache" : '' };
      AJAX();
      break;

    case caja:
      /// resumeeeeeeennnncoñoooo....
      resumen();
      break; 

      default:
        break;
    }

   }


   function AJAX(){
    $.ajax({
        type: "POST",
        url: "ajax.php",
        data: consulta,
        success: function (respuesta) { 
         Respuesta(JSON.parse(respuesta));
        }
   });
  }


  function id_g(pieza){

    if(perfil_madre==null){
      return '';
    }

    switch (pieza) {
      /*
      case madre:
        window.alert('raro...');
        return JSON.stringify([rr[13],rr[14],rr[15],rr[16],rr[17],rr[18]]);
        break;
      */
      case cpu:
        return perfil_madre[12];
        break;

      case ram:
        return perfil_madre[13];
        break;

      case psu:
        return perfil_madre[14];
        break;

      case almacenamiento:
        return perfil_madre[15];
        break;

      case grafica:
        return perfil_madre[16];
        break;

      case cpu_cooler:
        return perfil_madre[17];
        break;

      case caja:
        return perfil_madre[18];
        break;  


      default:
        break;
    }


  }

  function Respuesta(respuesta){

      switch (respuesta[0]) {
        case madre:
          cargar_piezas_contenido(respuesta,11,null, 'img_tarjeta_madre','madre_click');
          break;

          case cpu:
          cargar_piezas_contenido(respuesta,10,11, 'img_cpu','cpu_click');
          break;

          case ram:
          cargar_piezas_contenido(respuesta,11,12, 'img_ram','ram_click');
          break;

          case psu:
          cargar_piezas_contenido(respuesta,10,11, 'img_psu','psu_click');
          break;

          case almacenamiento:
          cargar_piezas_contenido(respuesta,10,11, 'img_almacenamiento','almacenamiento_click');
          break;

          case grafica:
          cargar_piezas_contenido(respuesta,11,12, 'img_grafica','grafica_click');
          break;

          case cpu_cooler:
          cargar_piezas_contenido(respuesta,9,10, 'img_cpu_cooler','cpu_cooler_click');
          break;

          case caja:
          cargar_piezas_contenido(respuesta,9,10, 'img_caja','caja_click');
          break;
      
        default:
          break;
      }

  }


  var perfil_madre;

  //// funciones de carga del contenido.
    function cargar_piezas_contenido(pieza, index_precio, id_g, fimg, evento){

      $('#contenedor').html(''); // <<<< vaciamos el contenido.

      if(pieza[0] == madre)
      {
      perfil_madre = pieza[1];
      }

      pieza[1].forEach(i => {
        var sub = $('<div id="sub" onclick="'+evento+'(this)">');
        sub.attr('data-pid',i[0]); //// para almacenar datos personalizados en un DOM

        if(id_g!=null){
        sub.attr('data-id_g',i[id_g]);
        }

        sub.html(
          '<img src="./'+fimg+'/'+i[0]+'.png" alt="f" width="120" height="120">'+
          '<h6 id="id_precio">' + i[index_precio] + '$' + '</h6>'+
          '<h6 id="id_nombre">' + i[1] + '</h6>'
          );
        $(pieza[2]).append(sub);
      });

     
      $(pieza[2]).find('div').each(function(){
        $(this).css("width", "140px");
         });

         if ($('#chkbarato').prop('checked')) {
           sup();
         }
         
        
         if(pieza[2] == "#contenedor"){
         titulo_catalogo(pieza[0],pieza[1].length);
         }
    }

    function titulo_catalogo(pieza,cantidad){

      switch (pieza) {

        case madre:
          $('#catalogo_titulo').text('Tarjetas madres: ('+ cantidad + ')');
          break;

        case cpu:
          $('#catalogo_titulo').text('Procesadores compatibles: ('+ cantidad + ')');
          break;

        case ram:
          $('#catalogo_titulo').text('Memorias RAM compatibles: ('+ cantidad + ')');
          break;

        case psu:
          $('#catalogo_titulo').text('Fuentes de alimentacion compatibles: ('+ cantidad + ')');
          break;

        case almacenamiento:
          $('#catalogo_titulo').text('Almacenamientos compatibles: ('+ cantidad + ')');
          break;

        case grafica:
          $('#catalogo_titulo').text('Tarjetas graficas compatibles: ('+ cantidad + ')');
          break;

        case cpu_cooler:
          $('#catalogo_titulo').text('Ventladores de procesador compatibles: ('+ cantidad + ')');
          break;

        case caja:
          $('#catalogo_titulo').text('Cajas compatibles: ('+ cantidad + ')');
          break;
      
        default:
          break;
      }
    }



function piezas_cache(p)
{
 
    if(piezas_selec_cache.length<1){
      if(localStorage.getItem('piezas'))
      {
        perfil_madre = JSON.parse(localStorage.getItem('piezas'))[0][1];
      piezas_selec_cache = JSON.parse(localStorage.getItem('piezas'));
      }
    }

    piezas_selec_cache.push(p);

  localStorage.setItem('piezas',JSON.stringify(piezas_selec_cache));

}

var piezas_selec_cache = new Array();
/// eventos

 function madre_click(e){

  perfil_madre = perfil_madre[$(e).attr('data-pid')-1];

  piezas_cache([madre,perfil_madre]);

  $('#seleccionados').append(e);
  consulta = { "consulta" : [cpu], "id_g" : id_g(cpu), "cache" : '' };
  AJAX();

 }

 function cpu_click(e){

  piezas_cache([cpu,[$(e).attr('data-pid'),$(e).attr('data-id_g')]]);


  $('#seleccionados').append(e);
  consulta = { "consulta" : [ram], "id_g" : id_g(ram), "cache" : '' };
  AJAX();
 }

 function ram_click(e){

  piezas_cache([ram,[$(e).attr('data-pid'),$(e).attr('data-id_g')]]);

  $('#seleccionados').append(e);
  consulta = { "consulta" : [psu], "id_g" : id_g(psu), "cache" : '' };
  AJAX();
 }

 function psu_click(e){

  piezas_cache([psu,[$(e).attr('data-pid'),$(e).attr('data-id_g')]]);

  $('#seleccionados').append(e);
  consulta = { "consulta" : [almacenamiento], "id_g" : id_g(almacenamiento), "cache" : '' };
  AJAX();
 }

 function almacenamiento_click(e){

  piezas_cache([almacenamiento,[$(e).attr('data-pid'),$(e).attr('data-id_g')]]);

  $('#seleccionados').append(e);
  consulta = { "consulta" : [grafica], "id_g" : id_g(grafica), "cache" : '' };
  AJAX();
 }

 function grafica_click(e){

  piezas_cache([grafica,[$(e).attr('data-pid'),$(e).attr('data-id_g')]]);

  $('#seleccionados').append(e);
  consulta = { "consulta" : [cpu_cooler], "id_g" : id_g(cpu_cooler), "cache" : '' };
  AJAX();
 }

 function cpu_cooler_click(e){

  piezas_cache([cpu_cooler,[$(e).attr('data-pid'),$(e).attr('data-id_g')]]);

  $('#seleccionados').append(e);
  consulta = { "consulta" : [caja], "id_g" : id_g(caja), "cache" : '' };
   AJAX();
 }

 function caja_click(e){

  piezas_cache([caja,[$(e).attr('data-pid'),$(e).attr('data-id_g')]]);
  
  $('#seleccionados').append(e);

  resumen();

  $('#contenedor').html('');
  

   //window.alert(localStorage.getItem('piezas'));

   //listo. hacemos el resume ps.
 }



  function resumen(){
    $('#catalogo_titulo').text('Tu Setup:');
    $('#contenedor').css('display', 'none');


    var btn_pedir = $('<div id="btn_pedir"></div>');
    btn_pedir.text('Pedir esta PC!');

    $('#main').css('flex-wrap', 'wrap');
    $('#main').append(btn_pedir);
  }

/// cache















 function sup(p){
      
    var precios = [];

    var preciosorden = [];

    $('#contenedor').children('div').get().forEach(element => {
    precios.push($(element).find( "#id_precio" ).text().split("$")[0]);
    
  });

  precios = precios.sort(function(a, b){return a-b;});
  
  precios.forEach(aprecio => {
      
    $('#contenedor').children('div').get().forEach(preciotxt => {
      
      if($(preciotxt).find( "#id_precio" ).text().split("$")[0] == aprecio){
        preciosorden.push(preciotxt);
      }

    });

  });

  $('#contenedor').html('');

  preciosorden.forEach(element => {
    $('#contenedor').append(element);
  });

}
