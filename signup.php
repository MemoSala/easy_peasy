<?php
    include "php/connect.php";
    include "php/cookie.php";
    if (isset($_POST["signUp"])) {
        $name = $_POST["name"];
        $email = $_POST["email"];
        $password = $_POST["password"];
        $date = $_POST["date"];
        $gender = $_POST["gender"];
        $sqlCon = sqlConnection(" INSERT  INTO `client`(`cl_name`,`cl_email`,`cl_password`,`cl_data_of_birth`,`cl_gender`) VALUES('$name', '$email', '$password', '$date', '$gender');");
        if ($sqlCon == "Good") {
            setCook("email", $email);
            setCook("password", $password);
            header('Location: home.php');
        }else{ echo "error 404"; }
    }
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Sign Up</title>
        <link rel="stylesheet" href="css\style_auth.css">
    </head>
    <body>
        <header>
            <a href="javascript:window.history.back()"><img src="images/Exit.png" alt="" width="30"></a><br>
        </header>
        <div class="box2">
            <h1 >sign up</h1>
            <form method="post">
                <label for="">Username</label>   <input type="text" name="name" id="" placeholder="Username">
                <label for="">password</label>   <input type="password" name="password" placeholder="password">
                <label for="">email</label>      <input type="email" name="email" placeholder="email">
                <label for="">date</label>       <input type="date" name="date">
                <label  for="">male </label>     <input class="e" type="radio" name="gender" value="m">
                <label for="">female </label>    <input class="e" type="radio" name="gender" value="f">
                <Button type="submit" name="signUp">Login</Button>
            </form>
        </div>
    </body>
</html>