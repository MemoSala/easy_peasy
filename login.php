<?php
    include "php/connect.php";
    include "php/cookie.php";
    if (isset($_POST["signUp"])) {
        $email = $_POST["email"];
        $password = $_POST["password"];
        $array_user = getData("SELECT * FROM `client` WHERE `cl_email` = '$email' AND `cl_password` = '$password';");
        foreach ($array_user as $row) {
            setCook("email", $email);
            setCook("password", $password);
            header('Location: home.php');
        }
        echo "error 404";
    }
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css\style_auth.css">
        <title>Log In</title>
    </head>
    <body>
        <header>
            <a id="C" href="javascript:window.history.back()"><br>
                <img src="images/Back.png"  width="30">
            </a>
        </header>
        <div class="box1">
            <form method="post">
                <h1>Login</h1>
                <label for="">Email</label>         <input type="email" name="email" placeholder="email"><br>
                <label for="">password</label >     <input type="password" name="password" placeholder="password" >
                <Button type="submit" name="signUp">Login</Button><br>
                <button class="y"><a href="signup.php">sign up</a></button>
            </form>
        </div>
    </body>
</html>