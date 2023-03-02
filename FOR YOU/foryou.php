<?php
    $dbc=mysqli_connect('localhost','root','','twilight');
    $query= "SELECT Song_name , Song_id FROM songs ORDER BY RAND() LIMIT 1";
    $ftch=mysqli_query($dbc,$query);
    // $row = mysql_fetch_array($ftch);
    // echo $row['Song_id'];
    // if(mysqli_query($dbc,$query)){
    //     echo $row['Song_id'];
    // }else{
    //     echo 'Error nee modda!';
    // }
    // echo "<table>"; // start a table tag in the HTML

    $row = mysqli_fetch_array($ftch) ; 
//Creates a loop to loop through results
    // echo $row['Song_id'] ;  //$row['index'] the index here is a field name
    $songid=$row['Song_id'];
    $songName=$row['Song_name'];
    $source="../SONGS/".$songid.".mp3";
    mysqli_close($dbc);
?>    

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="foryou.css">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FOR YOU</title>
</head>
<body>
    <h1><?php echo str_replace("_", " ",$songName) ?></h1>
            <audio controls autoplay> 
                <source src=<?php echo $source?> type="audio/mpeg">    
            </audio>    
</body>
</html>