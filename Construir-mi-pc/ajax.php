<?php

require('conexion.php');
$BD=clase_bd::conectar();


if(isset($_REQUEST['consulta'])){


    
    if($_REQUEST['consulta'][0]=='madre'){

    if($_REQUEST['cache']=='s'){

        ////aqui hay que poner despues un controlador si el producto existe o si esta en stock

        $resultado = $BD->query('SELECT * FROM tbl_tarjeta_madre WHERE id = '.$_REQUEST['consulta'][1][0]);

        echo (json_encode(['madre',$resultado->fetch_all(),'#seleccionados']));
    }
    else{

            $resultado = $BD->query('SELECT * FROM tbl_tarjeta_madre');
            echo (json_encode(['madre',$resultado->fetch_all(),'#contenedor']));
        }
    }

    if($_REQUEST['consulta'][0]=='cpu'){

        if($_REQUEST['cache']=='s'){
            //file_put_contents('AJAXXXXXXX2.txt', $_REQUEST['consulta'][1][0]);
            $resultado = $BD->query('SELECT * FROM tbl_cpu WHERE id = '.$_REQUEST['consulta'][1][0]);

            echo (json_encode(['cpu',$resultado->fetch_all(),'#seleccionados']));
        }
        else{

                $jdeco = json_decode($_REQUEST['id_g']);
                $resultado = $BD->query("SELECT * FROM tbl_cpu WHERE id_cpu_g IN (".$jdeco.")");
                echo (json_encode(['cpu',$resultado->fetch_all(),'#contenedor']));
        }

                                                                                        // file_put_contents('AJAX5.txt', $_REQUEST['id']);
    }

    if($_REQUEST['consulta'][0]=='ram'){

        if($_REQUEST['cache']=='s'){
            $resultado = $BD->query('SELECT * FROM tbl_ram WHERE id = '.$_REQUEST['consulta'][1][0]);

            echo (json_encode(['ram',$resultado->fetch_all(),'#seleccionados']));
        }
        else{

            $jdeco = json_decode($_REQUEST['id_g']);
            $resultado = $BD->query("SELECT * FROM tbl_ram WHERE id_ram_g IN (".$jdeco.")");
            echo(json_encode(['ram',$resultado->fetch_all(),'#contenedor']));

        }
    }

    if($_REQUEST['consulta'][0]=='psu'){

        if($_REQUEST['cache']=='s'){
            $resultado = $BD->query('SELECT * FROM tbl_psu WHERE id = '.$_REQUEST['consulta'][1][0]);

            echo (json_encode(['psu',$resultado->fetch_all(),'#seleccionados']));
        }
        else{

            $jdeco = json_decode($_REQUEST['id_g']);
            $resultado = $BD->query("SELECT * FROM tbl_psu WHERE id_psu_g IN (".$jdeco.")");
            echo(json_encode(['psu',$resultado->fetch_all(),'#contenedor']));

        }
    }

    if($_REQUEST['consulta'][0]=='almacenamiento'){

        if($_REQUEST['cache']=='s'){
            $resultado = $BD->query('SELECT * FROM tbl_almacenamiento WHERE id = '.$_REQUEST['consulta'][1][0]);

            echo (json_encode(['almacenamiento',$resultado->fetch_all(),'#seleccionados']));
        }
        else{

            $jdeco = json_decode($_REQUEST['id_g']);
            $resultado = $BD->query("SELECT * FROM tbl_almacenamiento WHERE id_almacenamiento_g IN (".$jdeco.")");
            echo(json_encode(['almacenamiento',$resultado->fetch_all(),'#contenedor']));

        }
    }

    if($_REQUEST['consulta'][0]=='grafica'){

        if($_REQUEST['cache']=='s'){
            $resultado = $BD->query('SELECT * FROM tbl_tarjeta_video WHERE id = '.$_REQUEST['consulta'][1][0]);

            echo (json_encode(['grafica',$resultado->fetch_all(),'#seleccionados']));
        }
        else{

        $jdeco = json_decode($_REQUEST['id_g']);
        $resultado = $BD->query("SELECT * FROM tbl_tarjeta_video WHERE id_tarjeta_video_g IN (".$jdeco.")");
        echo(json_encode(['grafica',$resultado->fetch_all(),'#contenedor']));

        }
    }

    if($_REQUEST['consulta'][0]=='cpu-cooler'){

        if($_REQUEST['cache']=='s'){
            $resultado = $BD->query('SELECT * FROM tbl_cpu_cooler WHERE id = '.$_REQUEST['consulta'][1][0]);

            echo (json_encode(['cpu-cooler',$resultado->fetch_all(),'#seleccionados']));
        }
        else{

        $jdeco = json_decode($_REQUEST['id_g']);
        $resultado = $BD->query("SELECT * FROM tbl_cpu_cooler WHERE id_cpu_cooler_g IN (".$jdeco.")");
        echo(json_encode(['cpu-cooler',$resultado->fetch_all(),'#contenedor']));

        }
    }

    if($_REQUEST['consulta'][0]=='caja'){

        if($_REQUEST['cache']=='s'){
            $resultado = $BD->query('SELECT * FROM tbl_caja WHERE id = '.$_REQUEST['consulta'][1][0]);

            echo (json_encode(['caja',$resultado->fetch_all(),'#seleccionados']));
        }
        else{

        $jdeco = json_decode($_REQUEST['id_g']);
        $resultado = $BD->query("SELECT * FROM tbl_caja WHERE id_caja_g IN (".$jdeco.")");
        echo(json_encode(['caja',$resultado->fetch_all(),'#contenedor']));

        }
    }

    $resultado->free();
    $BD->close();
    
}

?>