<html>
<body style=" background-image: url(tarinlogo.png);
    height: 100%; 
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;">
<div align="center">
  

<?php 

require "db.php";

$uid=$_POST["uid"];
$pwd=$_POST["password"];


$sql = "INSERT INTO admin (uid,password,) VALUES ('".$uid."','".$pwd."')"; 
// echo $sql;

if ($conn->query($sql) === TRUE) 
{
 echo "Hi $eid,  <a    href=\"http://localhost/railway/admin_login.html\" > Click here </a>  to browse through our website!!! " ;
} 
else 
{
 echo "Error:" . $conn->error. "<br> <br>
   <a  href=\"http://localhost/railway/new_user_form.html\">Go Back to Login</a> ";
}

$conn->close(); 
?>

</div>
</body>
</html>

