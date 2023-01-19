<html>
<body style=" background-color:#F39C12;
    height: 100%; 
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    color:black;">

    <style>
        link.a{
            text-decoration:none;
        }
    </style>

<?php

require "db.php";

echo "
<table>
<thead><td>Train_no</td><td>Starting_Point</td><td>Destination_Point</td></thead>
<tr><td>".$_GET["trainno"]."</td><td>".$_GET["sp"]."</td><td>".$_GET["dp"]."</td></tr>
</table>
";

echo "
<table>
<thead><td>Train_Class</td><td>Seats_Left</td><td>Fare_Per_Seat</td></thead>
";

$cdquery="SELECT classseats.class,classseats.seatsleft,classseats.fare FROM classseats WHERE classseats.trainno='".$_GET["trainno"]."' AND classseats.sp='".$_GET["sp"]."' AND classseats.dp='".$_GET["dp"]."'";
$cdresult=mysqli_query($conn,$cdquery);

while ($cdrow=mysqli_fetch_array($cdresult)) 
{
	echo "
<tr><td>".$cdrow[0]."</td><td>".$cdrow[1]."</td><td>".$cdrow[2]."</td></tr>
";
}
echo "</table>";

echo " <br> <button> <a href=\"http://localhost/railway/schedule.php?trainno=".$_GET['trainno']."\">Go Back to Schedule</a></button><br> ";
echo " <br> <button><a href=\"http://localhost/railway/show_trains.php\">Go Back to Train Menu</a></button><br> ";
echo " <br> <button><a href=\"http://localhost/railway/admin_login.php\">Go Back to Admin Menu</a></button> ";
?>
</body>
</html>
