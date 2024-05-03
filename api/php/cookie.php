<?php
    function setCook($name, $v){
        setcookie($name, $v, time() + ((24 * 60 * 60 ) * 30), "/");
    }
    function getCook($name){
        return $_COOKIE[$name] ?? "Null";
    }
?>