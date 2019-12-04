<?php
//koneksi database
//mulai session
session_start();
include 'koneksi.php';
$vusername=$_POST['username'];
$vpassword=$_POST['password'];
$op=$_GET['op'];
	if ($op=="in")
	 {
		$cek=mysqli_query($mysqli,"SELECT * FROM multiuser WHERE username='$vusername' and password='$vpassword'");
		if (mysqli_num_rows($cek)==1) 
		{
				$result = mysqli_fetch_array($cek);
					$_SESSION['username'] = $result['username'];
					$_SESSION['password'] = $result['password'];
					$_SESSION['level']= $result['level'];
						if ($result['level']=="admin") 
						{
							header('location:admin/homeadmin.php');
						}
						elseif ($result['level']=="u`	ser") 
						{
							header('location:admin/homeuser.php');
						}
		}
		else
		{	?>
			<script type="text/javascript">
				alert("username dan password salah !!");
				window.location.href="login.php";
			</script>
			<?php
	}
		}

	elseif ($op=="out") 
	{
		unset($_SESSION['username']);
		unset($_SESSION['password']);
		unset($_SESSION['level']);
			header("location:login.php");
	}

?>

