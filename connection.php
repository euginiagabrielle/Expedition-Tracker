<?php

    $con=mysqli_connect('localhost','root','','db_uastekweb');

    if(!$con)
    {
        die('Please Check Your Connection' .mysqli_error());
    }

?>