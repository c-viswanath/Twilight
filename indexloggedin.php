<?php
    session_start();
    if(!isset($_SESSION['loggedin'])) {
        header('location: /LOGIN page/login.php');
    }
    function logOut(){
        session_destroy();
    }
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Twilight.</title>
        <link rel="stylesheet" href="styleloggedin.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,300;0,400;0,700;0,900;1,200;1,700&display=swap" rel="stylesheet">
    </head>
    <body>

        <div class="total-container">
            <div class="left-half">

                <article>
                    <div class="options-homepage-container">
                        <div class="options-homepage"><a href="ACCOUNT PAGE\account_page.php">ACCOUNT</a></div>
                        <br>
                        <div class="options-homepage"><a href="PLAYLISTS PAGE\playlists.html">PLAYLISTS</a></div>
                        <br>
                        <div class="options-homepage"><a href="TRENDING\trending.php">TRENDING</a></div>
                        <br>
                        <div class="options-homepage"><a href="FOR YOU/foryou.php">FOR YOU</a></div>
                    </div>
                </article>
            </div>
            <div class="right-half">
                <div class="loginbuttons">
                    <a href="ACCOUNT PAGE/account_page.php"><button><?php echo $_SESSION['username'] ?></button></a>
                    <a href="index.html"><button id = 'logout'><?php echo 'Logout'?></button></a>

                </div>
                <article>
                    <div class="searchform">
                        <form action="search.php" method="post">
                            <input type="text" placeholder="Search For Any Song" id="searchbox" name="searchbox">
                            <br>
                            <input type="submit" value="Search" id="searchbutton" >
                        </form>
                    </div>    
                </article>
            </div>
        </div>
        <a href="index.html"><p class="text">Twilight.</p></a>
        <!-- <p class="textbottom">&#169;Twilight All rights reserved 2023 </p> -->
        <!-- <p class="textdesc">Your Music Companion...</p> -->
        <!-- <script src="search.js"></script> -->

    </body>
</html>