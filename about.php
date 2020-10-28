<?php

if(session_id() == '' || !isset($_SESSION)){session_start();}


?>

<!DOCTYPE html>
<html class="no-js" lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>About G Shock</title>
    <link rel="stylesheet" href="css/foundation.css" />
    <script src="js/vendor/modernizr.js"></script>
  </head>
  <body>

    <nav class="top-bar" data-topbar role="navigation">
      <ul class="title-area">
        <li class="name">
          <h1><a href="index.php">G Shock </a></h1>
        </li>
        <li class="toggle-topbar menu-icon"><a href="#"><span></span></a></li>
      </ul>

      <section class="top-bar-section">
        <ul class="right">
          <li class="active"><a href="about.php">About</a></li>
          <li><a href="products.php">Products</a></li>
          <li><a href="cart.php">View Cart</a></li>
          <li><a href="orders.php">My Orders</a></li>
          <li><a href="contact.php">Contact</a></li>
          <?php
    
          if(isset($_SESSION['username'])){
            echo '<li><a href="account.php">My Account</a></li>';
            echo '<li><a href="logout.php">Log Out</a></li>';
          }
          else{
            echo '<li><a href="login.php">Log In</a></li>';
            echo '<li><a href="register.php">Register</a></li>';
          }
          ?>
        </ul>
      </section>
    </nav>




    <div class="row" style="margin-top:30px;">
      <div class="small-12">
        <p>Casio G Shock Shop is a project on E-Commerce Website for Selling  Casio G Shock watch. CASIO’s shock-resistant G-SHOCK watch is synonymous with toughness, born from the developer Mr. Ibe’s dream of ‘creating a watch that never breaks’. Over 200 handmade samples were created and tested to destruction until finally in 1983 the first, now iconic G-SHOCK hit the streets of Japan and began to establish itself as ‘the toughest watch of all time’. Each watch encompasses the 7 elements; electric shock resistance, gravity resistance, low temperature resistance, vibration resistance, water resistance, shock resistance and toughness. The watch is packed with Casio innovations and technologies to prevent it from suffering direct shock; this includes internal components protected with urethane and suspended timekeeping modules inside the watch structure. Since its launch, G-SHOCK has continued to evolve, continuing to support on Mr. Ibe’s mantra “never, never give up.”
        <a href="https://www.casio.com/products/watches/g-shock" target="_blank" rel="noopener noreferrer" title="Casio@Official ">Offcial Casio Website</a>.</p>



        <footer>
           <p style="text-align:center; font-size:0.8em;">&copy; G-Shock. All Rights Reserved.</p>
        </footer>

      </div>
    </div>







    <script src="js/vendor/jquery.js"></script>
    <script src="js/foundation.min.js"></script>
    <script>
      $(document).foundation();
    </script>
  </body>
</html>
