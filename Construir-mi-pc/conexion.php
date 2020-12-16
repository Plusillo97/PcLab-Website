<?php
class clase_bd{
    static $cone = null;
    public static function conectar(){
        $cone=new mysqli("localhost","root","","pclab_bd");
        return $cone;
    }
}
?>