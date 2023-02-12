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
		$sql = "INSERT INTO users VALUES ('$first_name','$last_name','$Username','$password','$Email',NULL)";
		
		if(mysqli_query($conn, $sql)){
			echo "<h3>data stored in a database successfully.". " Please browse your localhost php my admin". " to view the updated data</h3>";
		} else{
			echo "ERROR: Hush! Sorry $sql. "
				. mysqli_error($conn);
		}
		mysqli_close($conn);
?>