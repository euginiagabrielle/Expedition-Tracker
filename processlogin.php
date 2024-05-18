<?php 
session_start();
require_once('connection.php');

    if(isset($_POST['Login']))
    {

        if(empty($_POST['Username']) || empty($_POST['Password'])) 
        {
            header("location:adminlogin.php?Empty= Please fill in the blanks");
        }
        else
        {
            $query="select * from user_admin where username='".$_POST['Username']."' and password='".$_POST['Password']."' and status_aktif=1";
            $result=mysqli_query($con, $query);
            
            if(mysqli_fetch_assoc($result))
            {
                $_SESSION['Username']=$_POST['Username'];
                header("location:adminpage.php");
            }
            else
            {
                header("location:adminlogin.php?Invalid= Please enter correct username and password");
            }
        }
    }
?>