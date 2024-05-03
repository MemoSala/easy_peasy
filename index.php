<?php
    include "php\connect.php";
    include "php\user.php";
    $data = getData("SELECT * FROM `subject`");
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Easy Peasy</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css\style_home.css">
    </head>
    <body>
        <div class="contenr">
        <header>
            <a class="logo" href="">welcom to  esy peasy</a>
            <ul> 
                <li><a href="">home</a></li>
                <li><a href="">courses</a></li>
                <li><a href="">voides</a></li>
                <?php
                    if($email == "Null"){
                        echo "
                            <li><a href='login.php'>login</a></li>
                            <li><a href='signup.php'>sign up</a></li>
                        ";
                    }else{
                        echo "
                            <li><a href=''>$name</a></li>
                        ";
                    }
                ?>
            </ul> 
        </header>
        <nav>
            <div class="box">
                <div class="text">
                    <p>
                        Easy Peasy provides <br>innovative educational services,
                        catering to various age groups and academic levels,
                        with engaging materials and activities for<br>effective learning.
                    </p>
                </div>
                <div class="mr">
                    <img class="q" src="images/grammar correction-amico.png" width="400">
                </div>
            </div>
        </nav>
        <nav class="nav">
            <div class="images">
            <?php $i = 1; foreach ($data as $row) { 
                echo "
                    <a href='classification.php?q=".$row['su_number']."&n=".$row['su_name']."'>
                        <img src='images/subject_$i.jpg'>
                        <h2>".$row['su_name']."</h2>
                    </a>
                ";
                $i++;
            }?>
            </div>
        </nav>
        <footer>
            <div class="icons">
                <a href="https://www.facebook.com/profile.php?id=61558796736685"><div><img src="images/4202107facebookfblogosocialsocialmedia-115710_115591.png"></div></a>
                <a href="https://www.instagram.com/"><div><img src="images/instagram_logo_icon_168715.png"></div></a>
                <a href="https://twitter.com/?lang=en"><div><img src="images/4202000logosocialsocialmediatweettwitter-115688_115613.png"></div></a>
            </div>
        </footer>
    </body>
</html>

