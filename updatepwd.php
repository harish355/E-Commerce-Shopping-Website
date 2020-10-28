<?php
if($_SERVER["REQUEST_METHOD"] == "POST")
    {
        session_start();
        include 'config.php';
        $pass=$_POST['pwd'];
        $pass1=$_POST['pwd1'];

        if($pass!=$pass1 or $pass=="" or $pass==" ")
            {
                $user=$_SESSION['username'];

                
                echo '<h1>Password Didn"t match! Redirecting...</h1>';
                header("Refresh: 5; url=index.php");
                
            }
        else
        {
            $user=$_SESSION['username'];
            $result = $mysqli->query("UPDATE users SET password='$pass' WHERE  email='$user'");
        
            // if($result == FALSE ) 
            //     {
            //         die(mysql_error());
            //     }
            if($result)
                {

                    echo '<h1>Password changed 302 Redirecting...</h1>';
                    header("Refresh: 1; url=index.php");
                }
        
            else
                {
                    echo $result;
                    
                    ?>      
                    <script>
                    alert("Invalid username or password");
                    document.getElementById("demo").innerHTML = "Paragraph changed!";
                    </script>
                    <?php 
                 }
        }
    }
?>