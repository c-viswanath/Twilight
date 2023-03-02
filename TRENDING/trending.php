<?php
    $dbc=mysqli_connect('localhost','root','','twilight');
    $query= "SELECT Song_name FROM songs ORDER BY No_of_plays DESC LIMIT 5";
    $ftch=mysqli_query($dbc,$query);
    // $row = mysqli_fetch_array($ftch) ; 
    // echo $row['Song_name'];
    $rows = array();
    while($row = mysqli_fetch_array($ftch)){
        $rows[] = $row;
    }
    // echo $rows[0]['Song_name'];
    // echo $rows[1]['Song_name'];
    // echo $rows[2]['Song_name'];
    // echo $rows[3]['Song_name'];
    // echo $rows[4]['Song_name'];
    // echo gettype($rows[0]['Song_name']);
    $data='{"Song_name":["'.$rows[0]['Song_name'].'","'.$rows[1]['Song_name'].'","'.$rows[2]['Song_name'].'","'.$rows[3]['Song_name'].'","'.$rows[4]['Song_name'].'"]}';
    // echo $data;
    $jsondata=json_decode($data,true);

    $query1= "SELECT Song_id FROM songs ORDER BY No_of_plays DESC LIMIT 5";
    $feetch=mysqli_query($dbc,$query1);
    $rowss = array();
    while($row = mysqli_fetch_array($feetch)){
        $rowss[] = $row;
    }

    // $rowss = mysqli_fetch_array($feetch) ; 
    // $songid=$rowss['Song_id'];
    $source1=$rowss[0]['Song_id'].".mp3";
    $source2=$rowss[1]['Song_id'].".mp3";
    $source3=$rowss[2]['Song_id'].".mp3";
    $source4=$rowss[3]['Song_id'].".mp3";
    $source5=$rowss[4]['Song_id'].".mp3";
?>    


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="trending.css">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,300;0,400;0,700;0,900;1,200;1,700&display=swap" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trending</title>
    <style>
        a{
            text-decoration: none;
        }
        audio{
            width:100%;
            height:50px;
            margin-top: 3%;
        }
        audio::-webkit-media-controls-play-button,
            audio::-webkit-media-controls-panel {
            background-color: rgb(226, 193, 255);
            color: #4d0b68;
        }
    </style>
</head>
<body>
    <h2>See What's Trending on Twilight..</h2>
    <form action="audiopage.php" method="post">
        <div class="spancontainer">
            <ul>       
                <li class="1"><a href="audiopage1.php"> <?php echo str_replace("_", " ",$rows[0]['Song_name']) ?></a></li>
                <li class="2"><a href="audiopage2.php"> <?php echo str_replace("_", " ",$rows[1]['Song_name']) ?></a></li>
                <li class="3"><a href="audiopage3.php"> <?php echo str_replace("_", " ",$rows[2]['Song_name']) ?></a></li>
                <li class="4"><a href="audiopage4.php"> <?php echo str_replace("_", " ",$rows[3]['Song_name']) ?></a></li>
                <li class="5"><a href="audiopage5.php"> <?php echo str_replace("_", " ",$rows[4]['Song_name']) ?></a></li>
            </ul>
        </div>
    </form>
</body>
</html>


