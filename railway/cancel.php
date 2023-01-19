<html>
<link rel="stylesheet" href="cancel.css">
<body style=" background-image: url(https://d19qjkjk65tfln.cloudfront.net/img/login-page-bg.svg);
    height: 100%; 
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
  ">

<?php 

session_start();

require "db.php";

$pnr=$_POST["cancpnr"];
$uid=$_SESSION["id"];
//echo "$uid";

$sql=" UPDATE resv SET status ='CANCELLED' WHERE resv.pnr='".$pnr."' AND resv.id='".$uid."' ";

if ($conn->query($sql) === TRUE) 
{
 echo "Cancellation Successful!!!";
} 
else 
{
 echo "<br><br>Error:" . $conn->error;
}

$conn->close(); 
?>
<br><br>
<div id="but"><button><a href="http://localhost/railway/index.html">Home Page</a></button><br></div>



</body>
</html>
