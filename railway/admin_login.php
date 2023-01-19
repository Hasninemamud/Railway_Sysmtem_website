<html>
    <!-- https://images.unsplash.com/photo-1627280436362-ab2a45aeef09?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80 -->
<head>
    <link rel="stylesheet" href="admin.css">
</head>

<body style=" 
    height: 100%; 
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    font-size:44;
    ">
    <style>
        button a{
            text-decoration:none;
            padding: 15px;
            font size: 22px;
            
margin: 15px;
color: #090909 ;
border-radius: 20px;
height: 25px;
border-color: #F5B041;
        }
        button{
            background-color: #F5B041;
            
        }
    </style>
    


<div class="id"> <p  style=" background-color:green;text-align:center;height:50px;font-size: 40;color:white;margin-bottom: 8px;"><b>Railway Infromation</b> </p><br><br></div>
<div class="content">
<?php 


session_start();
if($_POST["uid"]=='admin' AND $_POST["password"]=='admin' )
{
$_SESSION["admin_login"]=True;
}

if($_SESSION["admin_login"]=True)
{
    echo " <br><n><button><a href=\"http://localhost/railway/insert_into_stations.php\"> Show All Stations </a></button></n><br> ";
    echo " <br><n><button><a href=\"http://localhost/railway/show_trains.php\"> Show All Trains </a></button></n><br> ";
    echo " <br><n><button><a href=\"http://localhost/railway/show_users.php\"> Show All Users </a></button></n><br> ";
    echo " <br><n><button><a href=\"http://localhost/railway/insert_into_train_3.php\"> Enter New Train</a></button></n><br>";
    echo " <br><n><button><a href=\"http://localhost/railway/insert_into_classseats_3.php\"> Enter Train Schedule </a></button></n><br>";
    echo " <br><n><button><a href=\"http://localhost/railway/booked.php\"> View all booked tickets </a></button></n><br> ";
    echo " <br><n><button><a href=\"http://localhost/railway/cancelled.php\"> View all cancelled tickets </a></button></n> ";
    

}
else 
{

echo "
<form action=\"admin_login.php\" method=\"post\">
User ID: <input type=\"text\" name=\"uid\" required><br>
Password: <input type=\"password\" name=\"password\" required><br>
<input type=\"submit\">
</form>
";
}


?>
 <br> <button><a href="http://localhost/railway/index.html"> Logout </a></button>

<button >  <a href="http://localhost/railway/index.html">Home Page</a></button>
</div>
</div>
</body>
</html>
