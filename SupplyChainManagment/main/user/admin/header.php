

<header class="main-header">
    <!-- Logo -->
    <a href="home.php" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b><h4>U</h4></span>
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
          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <img src="dist/img/avatar04.png" class="user-image" alt="User Image"><?php session_start(); echo $_SESSION['email'];?>
              <span class="hidden-xs">
			  </span>
            </a>
            <ul class="dropdown-menu">
              <!-- User image -->
              <li class="user-header">
                <img src="dist/img/avatar04.png" class="img-circle" alt="User Image">

                <p>
                 UPASTHA
				  
                  <!---<small>Print it</small>-->
                </p>
              </li>
              <!-- Menu Footer-->
              <li class="user-footer">
                <div >
                   <a href="home.php" class="btn btn-success ">HOME</a>
                  <a href="logout.php" class="btn btn-danger " style="float: right;">Log out</a>
                 

				  
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
          <img src="dist/img/avatar04.png" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p></p>
          <a href="#"></a>
        </div>
      </div>
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu">
        <li class="header">Menu</li>
        <li class="active treeview">
          <a href="home.php">
            <i class="fa fa-dashboard"></i> <span>Dashboard</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
		  
        </li>
        <li class="treeview">
          <a href="category_view.php">
            <i class="fa fa-list-ul"></i>
            <span>Categories</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
		 
        </li>
        <li class="treeview">
          <a href="subcat_view.php">
            <i class="fa fa-list"></i> <span>Sub-Categories</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
		 
        </li>
		
		
		<li class="treeview">
          <a href="merchant_view.php">
            <i class="fa fa-users"></i> <span>Marchant</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
		 
        </li>
		
		
		<li class="treeview">
          <a href="#">
            <i class="fa fa-user"></i> <span>Vendor</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="vendor_request.php"><i class="fa fa-circle"></i>Request</a></li>
            <li><a href="vendor_confirm.php"><i class="fa fa-check-square-o"></i> Confirm</a></li>
          </ul>
        </li>
        
		
				<li>
					<a href="assign_view.php">
					<i class="fa  fa-user-plus"></i> <span>Assign</span>
					<span class="pull-right-container">
					<i class="fa fa-angle-left pull-right"></i>
					</span>
					</a>
					
				</li>
			<li>
          <a href="admin_view.php">
            <i class="fa  fa-user-plus"></i> <span>Add Admin</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
		  
        </li>
		
		<li>
          <a href="quantity_view.php">
            <i class="fa  fa-sort-amount-asc"></i> <span>Quantity</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
		  
        </li>
		
		<li>
          <a href="units_view.php">
            <i class="fa  fa-sort-amount-desc"></i> <span>unitss</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
		  
        </li>

        <li>
          <a href="units_view.php">
            <i class="fa  fa-sort-amount-desc"></i> <span>Change Password</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
      
        </li>
		
		
		
      </ul>
    </section>
  
  </aside> 
