<?php
    $inputtedDataSpace=$_POST['searchbox'];
    $inputtedData=str_replace(" ", "_", $inputtedDataSpace);
    $dbc=mysqli_connect('localhost','root','','twilight');
    $query= "SELECT Song_id FROM songs WHERE Song_name='$inputtedData'";
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
    $source="SONGS/".$songid.".mp3";

    mysqli_close($dbc);
?>    

<!DOCTYPE html>
    <head>
        <link rel="stylesheet" href="stylephp.css">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,300;0,400;0,700;0,900;1,200;1,700&display=swap" rel="stylesheet">
    </head>
    <body>
        <h1><?php echo $inputtedDataSpace ?></h1>
        <audio controls autoplay> 
            <source src=<?php echo $source?> type="audio/mpeg">    
        </audio>     

    </body>


</html>