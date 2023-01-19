<html>
<body style=" background-color:#F5B041;
    height: 100%; 
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;">

<?php

require "db.php";

$sql = "DELETE from station where id= ('".$_GET["id"]."')";
echo $_GET["id"];

if ($conn->query($sql) === TRUE) {
    echo " '".$_POST["sname"]."': Record deleted successfully";
} else {
    echo "Error:" . $conn->error;
}

echo "<br> <br><button><a href=\"http://localhost/railway/admin_login.php\">Go Back to Admin Menu!!!</a> </button> ";

$conn->close();
?>


</body>
</html>


