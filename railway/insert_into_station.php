<html>
<body style=" background-image: url();
    height: 100%; 
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;">


<?php

require "db.php";

$sql = "INSERT INTO station(sname) VALUES ('".$_POST["sname"]."')";

if ($conn->query($sql) === TRUE) {
    echo " '".$_POST["sname"]."':New record created successfully";
} else {
    echo "Error:" . $conn->error;
}

echo "<br> <br> <button ><a  href=\"http://localhost/railway/insert_into_stations.php\" > Station Details </a> </button>" ;

$conn->close();
?>

</body>
</html>