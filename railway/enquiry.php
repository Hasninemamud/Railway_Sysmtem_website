<html>
<body style=" background-image: url(https://images.unsplash.com/photo-1474487548417-781cb71495f3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=984&q=80);
    height: 100%; 
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;" >
    
    <style>
         .content{
   
   background-color: rgba(0,0,0,0.5);
   border-radius: 20px;
   font-size: 18px;
   height: 220px;
   border: 1px solid rgba(255, 255, 255, 0.3);
   box-shadow: inset 0 -3em 3em rgba(0, 0, 0, 0.1), 0 0 0 2px rgb(255, 255, 255),
   0.3em 0.3em 1em rgba(0, 0, 0, 0.3);
   width: 350px;
   text-align: left;
   font-family: 'Courier';
   color: white;
   
   
   
}
.content a{
    hover:white;
}
.box{
    padding: 12%;
}


    </style>

<?php

session_start();
$_SESSION=array();
session_destroy();

?>
<div class="box">
<div class="content"> 
<form action="enquiry_result.php" method="post" >
<br>
Form-Point: <select id="sp" name="sp" required>
        
<?php

require "db.php";
            
            $cdquery="SELECT sname FROM station";
            $cdresult=mysqli_query($conn,$cdquery);
        
	
            echo " <option value = \"\" >
                    
                </option>";

            while ($cdrow=mysqli_fetch_array($cdresult)) {
            $cdTitle=$cdrow['sname'];

            echo " <option value = \"$cdTitle\" >
                    $cdTitle
                </option>";
            
            }
?>
    
</select>
<br><br>
   
To-Point: <select id="dp" name="dp" required>
        
<?php

require "db.php";
            
            $cdquery="SELECT sname FROM station";
            $cdresult=mysqli_query($conn,$cdquery);
        
            echo " <option value = \"\" >
                    
                </option>";

            while ($cdrow=mysqli_fetch_array($cdresult)) {
            $cdTitle=$cdrow['sname'];

            echo " <option value = \"$cdTitle\" >
                    $cdTitle
                </option>";
            
            }
?>
    
</select>
<br><br>
     
Date of Journey: <input type="date" name="doj" required><br><br>



<div style="text-align: center; color: white; text-decoration: none; ">
<input style="width: 150px; height: 25px; background: green; color: white; border-color: white; " type="submit" ><br>
<br ><a  style="text-decoration:none; color: white " href="http://localhost/railway/index.html" > Home Page</a>

</form>
</div>
</div>
</body>
</html>
