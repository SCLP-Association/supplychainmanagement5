<?php
include('dbconnect.php');
session_start();

if (isset($_POST['login']))
{
  $username=$_POST['email'];
  $userpass=$_POST['password'];
  
    $username=mysqli_real_escape_string($conn,$username);
    $userpass=mysqli_real_escape_string($conn,$userpass);
    
  
   // echo $username,$userpass;
    $sql="select * from user where email='$username' AND pwd='$userpass' ";

    $res=mysqli_query($conn,$sql);
    if($results=mysqli_fetch_assoc($res))
    {
        $type=$results['type'];
        if($type=="admin")
        {
           
               $_SESSION['uid'] = $results['uid'];
            $_SESSION['email'] = $results['email'];
            $_SESSION['uname'] = $results['uname'];
           // $_SESSION['company'] = $results['company'];
                $midd=$_SESSION['uid'] = $results['uid'];
                $type = $results['type'];
            ?>
            <script>
                document.location="auction/user/admin/main_home.php";
            </script>
            <?php
            
        }
        else if($type=="user")
        {
           
            $msql="select * from user where email='$username'";
            $mres=mysqli_query($conn,$msql);
            if($mresults=mysqli_fetch_assoc($mres))
            {
                   $_SESSION['uid'] = $results['uid'];
            $_SESSION['email'] = $results['email'];
            $_SESSION['uname'] = $results['uname'];
           // $_SESSION['company'] = $results['company'];
                $midd=$_SESSION['uid'] = $results['uid'];
                $type = $results['type'];
                
               
            }
            ?>
            <script>
                document.location="auction/user/main_home.php";
            </script>
            <?php
        }
     
        else
        {
            ?>
            <script>
                alert("Invalid Email & Password");
            </script>
            <?php
        }
        
    }
}


?>








<!DOCTYPE html>
<html lang="en">
<head>
    <title>UPASTHA</title>
    <meta charset="utf-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Your description">
    <meta name="keywords" content="Your keywords">
    <meta name="author" content="Your name">
    <link rel="icon" href="images/favicon.ico" type="image/x-icon">
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="css/bootstrap.css" type="text/css" media="screen">
    <link rel="stylesheet" href="css/responsive.css" type="text/css" media="screen">
    <link rel="stylesheet" href="css/camera.css" type="text/css" media="screen"> 
    <link rel="stylesheet" href="css/style.css" type="text/css" media="screen">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700' rel='stylesheet' type='text/css'>
  	<script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
  	<script type="text/javascript" src="js/camera.js"></script>
    <script src="js/jquery.ui.totop.js" type="text/javascript"></script>
    
  	<script>
        $(document).ready(function(){   
                jQuery('.camera_wrap').camera();
          });    
  	</script>		
  
    <script type="text/javascript" src="js/jquery.mobile.customized.min.js"></script>


<style>
div.gallery {
    margin: 5px;
    border: 1px solid #ccc;
    float: left;
    width: 180px;
}

div.gallery:hover {
    border: 1px solid #777;
}

div.gallery img {
    width: 100%;
    height: auto;
}

div.desc {
    padding: 15px;
    text-align: center;
}
</style>

</head>

<body>

<header>
   
    
 <div class="container">
    	<div class="row">
        	<div class="span12">
            	<div class="clearfix">
                    <div class="clearfix header-block-pad">
                        <h1 class="brand"><a href="index.html"><img src="" alt=""></a><span><h4 style="color:white">UPASTHA</h4></span></h1>
                        <!--<form id="search-form" action="" method="POST" accept-charset="utf-8" class="navbar-form" >
						<input type="text" name="email" placeholder="ENTER USERNAME HERE" >
						<input type="password" name="password" placeholder="ENTER PASSWORD HERE">
                            
                            <button class="btn btn-info" type="submit" name="login" value="submit" >LOGIN</button>

							
                        </form>-->
                        
                        <div style="float:right">
                        <button class="btn btn-info" type="submit" name="" value="submit" ><a href="main/"><label style="color: white;">LOGIN</label></a></button>

<button class="btn btn-info" type="submit" name="" value="submit" ><a href="main/m_registration.php"><label style="color: white;">Merchant Registration</label></a></button>

<button class="btn btn-info" type="submit" name="" value="submit" ><a href="main/v_registration.php"><label style="color: white;">Vendor Registration</label></a></button>
</div>



						
                        <span class="contacts">Call Us: <span>+91 8123 326 329</span><br>E-mail: <a href="#">indushree135@gmail.com</a></span>
                    </div>
					
					<!--<a href="register.php" style="float:right" ><h5 style="color: hotpink;">register</h5></a>-->
              </div>
           </div>
      </div>   
    </div>
    <!--==============================Slider=================================--> 
    <div class="slider">
    <div class="camera_wrap">
        <div data-src="images/slide1.png">
		<div class="camera_caption">
            <div class="container">
              <div class="row">
                <div class="span12">
                  <h2 style="color:black"></h2> <h3 style="color:black"><br/> </h3>
                </div>
              </div>
            </div> 
          </div>
		</div>
        <div data-src="images/slide4.png" style="object-fit: cover;">
          <div class="camera_caption">
            <div class="container">
              <div class="row">
                <div class="span12">
                  <h2 style="color:black"></h2> <h3 style="color:white"><br/> </h3>
                </div>
              </div>
            </div> 
          </div>     
        </div>
        
        
    </div>
</div>
</header>

<!--==============================Content=================================--> 
<section id="content" class="main-content">
  <div class="container">
    <div class="row">
      <div class="span12"> 
  
        <ul class="thumbnails">
		
          <li class="span3">
          <div class="gallery">
  <a target="_blank" href="img_fjords.jpg">
    <img src="images/img1.jpg" alt="Trolltunga Norway" width="300" height="200">
  </a>
  <div class="desc">3D PAINITNG</div>
</div>
          </li>
          <li class="span3">
          <div class="gallery">
  <a target="_blank" href="img_fjords.jpg">
    <img src="images/img2.jpg" alt="Trolltunga Norway" width="300" height="200">
  </a>
  <div class="desc">Tig Welding</div>
</div>
          </li>
          <li class="span3">
          <div class="gallery">
  <a target="_blank" href="img_fjords.jpg">
    <img src="images/img3.jpg" alt="Trolltunga Norway" width="300" height="200">
  </a>
  <div class="desc">Laser Cutting</div>
</div>
          </li>
          <li class="span3">
          <div class="gallery">
  <a target="_blank" href="img_fjords.jpg">
    <img src="images/img4.jpg" alt="Trolltunga Norway" width="300" height="200">
  </a>
  <div class="desc">Seco Turbo</div>
</div>
          </li>
          <li class="span3">
          <div class="gallery">
  <a target="_blank" href="img_fjords.jpg">
    <img src="images/img5.jpg" alt="Trolltunga Norway" width="300" height="200">
  </a>
  <div class="desc">CNC TURNINIG</div>
</div>
          </li>
		  
          </ul>
		  
      </div>
    </div>



  </div>
</section>


<!--==============================Bottom content=================================--> 
<aside id="bottom-content">
  <div class="container">
    <div class="row">
        <div class="clearfix">
          <div class="span3">
            <h5>UPASTHA</h5>
            
          </div>
          <div class="span9">
            <p>The UPASTHA system is a flexible for finding differnet venodrs supporting lot- based online services.

  

The system has been designed to be highly-scalable and capable of supporting large numbers of vendors for giving active services. 
   </p>
          </div>
        </div>

        <div class="padbotcontent"></div> 

       
   
    </div>
  </div>    
</aside>


<footer>
   <div class="container">
    <div class="row">
     

     
      <div class="span12">
        UPASTHA ©  2018. ALL RIGHTS RESERVED. &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;   <a href="#">Privacy Policy</a>
      </div>
    </div>
   </div>
</footer>
<script type="text/javascript" src="js/bootstrap.js"></script>
</body>
</html>