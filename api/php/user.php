<?php
    include "cookie.php";
    $email = getCook("email");
    $password = getCook("password");
    if ($email != "Null") {
        $array_user = getData("SELECT * FROM `client` WHERE `cl_email` = '$email' AND `cl_password` = '$password'");
        foreach ($array_user as $row) {
            $id = $row["cl_id"];
            $name = $row["cl_name"];
            $date = $row["cl_data_of_birth"];
            $gender = $row["cl_gender"];
        }
    }
?>