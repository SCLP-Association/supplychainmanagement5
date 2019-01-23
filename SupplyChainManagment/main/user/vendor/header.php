<header class="main-header">
    <!-- Logo -->
    <a href="home.php" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>U</span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>UPASTHA</b></span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
	  <!---<i class="glyphicon glyphicon-chevron-left"></i>-->
        <span class="sr-only">Toggle navigation</span>
      </a>

      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
         

          <!-- User Account: style can be found in dropdown.less -->
        <li class="dropdown user user-menu" >
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" >
              <img src="dist/img/avatar.png" class="user-image" alt="User Image">
              <span class="hidden-xs"><?php include('dbconnect.php'); session_start(); echo $_SESSION['email'];  ?></span>
            </a>
            <ul class="dropdown-menu" style="box-shadow: 0 8px 12px 3px #888888;">
              <!-- User image -->
              <li class="user-header">
                <img src="dist/img/avatar.png" class="img-circle" alt="User Image">

                <p>
                  <?php  echo $_SESSION['email']; ?>
                  <small>YOUR ID IS  <?php  echo $_SESSION['cvid']; ?></small>
                </p>
              </li>
              <!-- Menu Body -->
              <li class="user-body">
                <div class="row" >
                  <div class="col-xs-4 text-center">
                    <a href="enquiry_view.php">REQUESTED</a>
                  </div>
                  <div class="col-xs-4 text-center">
                    <a href="enquiry_replied_view.php">ACCEPTED</a>
                  </div>
                  <div class="col-xs-4 text-center">
                    <a href="enquiry_decline_view.php">DECLINE</a>
                  </div>
                </div>
                <!-- /.row -->
              </li>
              <!-- Menu Footer-->
              <li class="user-footer">
                <div class="pull-left">
                  <a href="home.php" class="btn btn-primary ">Profile</a>
                </div>
                <div class="pull-right">
                  <a href="logout.php" class="btn btn-danger ">Sign out</a>
                </div>
              </li>
            </ul>
          </li>
        </ul>
      </div>
    </nav>
  </header>
  <!-- Left side column. contains the logo and sidebar -->
	<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="dist/img/avatar.png" class="img-circle" alt="User Image">
		  
        </div>
        <div class="pull-left info">
          <p> <h5><?php  echo $_SESSION['email'];?></h5></p>
          <a href="#"></a>
        </div>
      </div>
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu"> 
        <li class="header">Menu</li>
        <li class="active treeview">
          <a href="home.php">
            <i class="fa fa-user"></i> <span>Profile</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
        </li>
		

		<li class="treeview">
          <a href="enquiry_view.php">
            <i class="fa  fa-check-square-o"></i> <span> Requested Enquiry</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          
        </li>
		<li class="treeview">
          <a href="enquiry_replied_view.php">
            <i class="fa   fa-plus-square"></i> <span>Accepted Enquiery</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          
        </li>
        <li class="treeview">
          <a href="enquiry_completed.php">
            <i class="fa  fa-check-square"></i> <span>Completed Enquiery</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          
        </li>
		<li class="treeview">
          <a href="enquiry_decline_view.php">
            <i class="fa fa-minus-square"></i> <span>Rejected Enquiery</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          
        </li>

        <li class="treeview">
          <a href="reset_pwd.php">
            <i class="fa fa-table"></i> <span>Reset Password</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          
        </li>
		

		
		
		
      
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside> 