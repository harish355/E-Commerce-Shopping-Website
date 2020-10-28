<?php

include 'config.php';
if(session_id() == '' || !isset($_SESSION)){session_start();}
$id = $_GET["id"];
$email=$_SESSION['username'];
$qty=$_GET['qty'];
$product_id=$_GET['code'];
$sql="SELECT * FROM orders ";
$result=$mysqli->query($sql);
if($result)
{
    while($obj=$result->fetch_object())
    {
        if($obj->id===$id && $obj->email===$email)
        {
            $sql="DELETE FROM orders WHERE id='$id' and email='$email'";
            if($mysqli->query($sql)){
                $update=$mysqli->query("UPDATE products SET qty =qty+'$qty' WHERE product_code = '$product_id'");
                echo '<h1>Deleted Success fully 302 Redirects...</h1>';
                echo '<br/>';
                header ("Refresh: 2; url=index.php"); 
            }
            else
            {
                echo '<center><h1>Invalid Details </h1></center>';
                header ("location:orders.php");
            }

        }
    }
}



?>
