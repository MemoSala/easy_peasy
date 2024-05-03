<?php
    include "php/connect.php";
    $qc = $_GET["q"] ?? "0";
    $name = $_GET["n"] ?? "";
    $data = getData("SELECT * FROM `course` WHERE `cla_number`=$qc;");
    $isGood = false;
    foreach ($data as $row) { $course = $row; $isGood = true; break; }
    if($isGood){
        $q = $_GET["qv"]?? $course["co_number"];
        $n = $_GET["nv"]?? $course["co_name"];
        $course_data = getData("SELECT * FROM `videos` WHERE `co_number`=$q;");
        foreach ($course_data as $row) { $course_img = "https://i.ytimg.com/vi/".$row['vi_code_youtube']."/mqdefault.jpg"; break; }
        $array_data_CT = getData("SELECT * FROM `course_teacher` WHERE `co_number`=".$q.";");
        $data_teacher = []; 
        foreach ($array_data_CT as $row) {
            $array =  getData("SELECT * FROM `teacher` WHERE `te_id`=".$row["te_id"].";");
            foreach ($array as $row) {
                array_push($data_teacher,$row);
            }
        }
        foreach ($data_teacher as $row) {
            $teacher = $row;
        }
        $array_length = getData("SELECT COUNT(*) AS 'L' FROM `videos` WHERE `co_number`=$q;");
        foreach ($array_length as $row) {$length = $row['L'];}
        $course_data = getData("SELECT * FROM `videos` WHERE `co_number`=$q;");
        $data = getData("SELECT * FROM `course` WHERE `cla_number`=$qc AND `co_number` != $q;");
    }
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title><?=$name?></title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css\style_course.css">
        <link rel="stylesheet" href="css\style.css">
        <style>
            <?php if ($isGood == false) {
                echo '
                    body{
                        width: 100%;
                    }
                    Section{ display:none; }
                    .videos{ 
                        display:none;
                    }
                    .bad{
                        background-color:#000;
                        font-size: 10vh;
                        margin: 37vh 0;
                        color: #f00;
                        width: 100%;
                        text-align: center;
                    }
                ';
            }else{
                echo '.bad{ display:none;}';
            }?>;
        </style>
    </head>
    <body>
        <div class="bad">
            <h1>Error 404</h1>
        </div>
        <Section class="action">
            <img src=<?=$course_img?>>
            <h1><?=$n?></h1>
            <div>
                <p><?=$teacher["te_name"] ?? ""?></p>
                <p><?=$length?> videos</p>
            </div>
        </Section>
        <Section class="null"></Section>
        <Section class="videos">
            <h1>videos:</h1>
            <div>
                <?php $i = 0; foreach ($course_data as $row) { $i++;
                    echo "
                        <a class='video button'>
                            <p>$i</p>
                            <img src='https://i.ytimg.com/vi/".$row['vi_code_youtube']."/mqdefault.jpg'>
                            <div><h3>".$row['vi_title']."</h3></div>
                        </a>
                    ";
                }?>
            </div>
            <?php
                $array_length = getData("SELECT COUNT(*) AS 'L' FROM `course` WHERE `cla_number`=$qc AND `co_number` != $q;");
                foreach ($array_length as $row) {$length = $row['L'];}
                if ("$length" != "0") {
                    echo "<hr>";
                }
            ?>
            <div class="course">
                <?php 
                    foreach ($data as $row) {
                        $course_data = getData("SELECT * FROM `videos` WHERE `co_number`=".$row['co_number'].";");
                        $url ="http://localhost/easy_peasy/course.php?qv=". $row['co_number']."&nv=".$row['co_name']."&q=".$qc."&n=".$name;
                        foreach ($course_data as $row) { $course_img = "https://i.ytimg.com/vi/".$row['vi_code_youtube']."/mqdefault.jpg"; break;}
                        $array_length = getData("SELECT COUNT(*) AS 'L' FROM `videos` WHERE `co_number`=".$row['co_number'].";");
                        foreach ($array_length as $row) {$length = $row['L'];}
                        echo"
                            <a href='$url'>
                                <img src='".$course_img."'>
                                <div><h3>".$length."<br>videos</h3></div>
                            </a>
                        ";
                    }
                ?>
            </div>
        </Section>
        <?php 
            $course_data = getData("SELECT * FROM `videos` WHERE `co_number`=$q;");
            foreach ($course_data as $row) {
                echo"
                    <nav class='video_Mo'>
                        <img class='exit' src='icons/exit.png'><br>
                        <iframe  width='900' height='506.7' src='https://www.youtube.com/embed/".$row["vi_code_youtube"]."'>
                        </iframe>
                    </nav>
                ";
            }
        ?>
        <script src="script.js"></script>
    </body>
</html>
