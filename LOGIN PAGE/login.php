<?php
        $server = 'localhost';
        $username = 'root';
        $password = '';
        $database = 'twilight';
		$conn = mysqli_connect($server, $username, $password, $database);
		if($conn === false){
			die("ERROR: Could not connect. ". mysqli_connect_error());
		}
        $username = $_POST['username'];
		$password = $_POST['password'];
		$Email = $_POST['Email'];
		$sql = "SELECT * from users WHERE Username = '$username' AND password = '$password' AND Email = '$Email'";
		
		$result = mysqli_query($conn, $sql);
        $num = mysqli_num_rows($result);
        if($num == 1) {
            session_start();
            $_SESSION['loggedin'] = true;
            $_SESSION['username'] = $username;
            $_SESSION['Email'] = $Email;
            $_SESSION['password'] = $password;
            header('location: ../indexloggedin.php');
        }
        else {
            echo 'Credentials not matching';
        }
		mysqli_close($conn);
?>