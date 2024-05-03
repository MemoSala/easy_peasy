<?php
    function con(){
        $host = 'localhost';
        $user = 'root'; 
        $password = '';
        $dbname= 'easy_peasy';
        
        //return new mysqli($host,$user,$password,$dbname);
        return new PDO('sqlite:SQL/easy_peasy.db');
    }
    
    function sqlConnection($sql){
        $con = con();
        $isMySql = $con->query($sql);
        if ($isMySql) {
            return "Good";
        } else {
            return "Bad";
        }
    }
     
    function getData($sql){
        $con = con();
        return $con->query($sql);
    }
?>