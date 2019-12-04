 <?php
// nama host
$host = 'localhost';
// nama user
$name = 'root';
// password user
$pass = '';
// nama database
$dbname = 'erin';

$mysqli = mysqli_connect($host,$name,$pass,$dbname) or die ("koneksi gagal");
?>
