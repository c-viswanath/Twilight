<?php
		$conn = mysqli_connect("localhost", "root", "", "twilight");
		if($conn === false){
			die("ERROR: Could not connect. ". mysqli_connect_error());
		}
		$first_name = $_POST['fname'];
		$last_name = $_POST['lname'];
        $Username = $_POST['Username'];
		$password = $_POST['password'];
		$Email = $_POST['Email'];
		$sql = "INSERT INTO users VALUES ('$first_name','$last_name','$Username','$password','$Email')";
		
		if(mysqli_query($conn, $sql)){
			// session_start();
			// $_SESSION['loggedin'] = true;
			// header('location: ../indexloggedin.php');
            echo "<h1>SignUp Successful</h1>";
            echo "<a href='../LOGIN PAGE/login.html'>Login Now!</a>";
		} else{
			echo "ERROR: Hush! Sorry $sql. "
				. mysqli_error($conn);
		}
		mysqli_close($conn);
?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Redirect</title>
	<style>
		html,body {
			margin: 2px;
			height:70%;
			background-color: rgb(226, 193, 255);
		}
		h1 {
			font-size: 1.75rem;
			display: block;
			font-family: 'Poppins',sans-serif;
			font-weight: 800;
			color: #4d0b69;
			padding-left:400px;
			font-size:72px;
			padding-top:10%;
		}
		a{
			font-family: 'Poppins', sans-serif;
			font-weight: 900;
			transition: color 200ms ease-in 10ms;
			font-size: 36px;
			padding-left:45%;

		}
		a:hover{
			color:#ce1ce5b4;
		}

	</style>
</head>
<body>
	
</body>
</html>