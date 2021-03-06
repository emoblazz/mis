<aside class="main-sidebar sidebar-dark-success elevation-4">
    <!-- Brand Logo -->
    <a href="index3.html" class="brand-link">
      <img src="../dist/img/logo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
      <span class="brand-text font-weight-light">SINHS</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="<?php echo $_SESSION['pic'];?>" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="#" class="d-block"><?php echo strtoupper($_SESSION['name']);?></a>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item menu-open">
            <a href="index.php" class="nav-link">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                Dashboard 
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fa fa-download"></i>
              <p>
                Downloadables
                <i class="fas fa-angle-left right"></i>
                <span class="badge badge-info right">2</span>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="archive.php" class="nav-link">
                  <i class="fa-solid fa-file-zipper nav-icon"></i>
                  <p>Archive</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="forms.php" class="nav-link">
                  <i class="fa-solid fa-file-lines nav-icon"></i>
                  <p>Forms</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fa fa-users"></i>
              <p>
                Student Enrollment
                <i class="fas fa-angle-left right"></i>
                <span class="badge badge-warning right">2</span>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="register.php" class="nav-link">
                  <i class="fa fa-user-plus nav-icon"></i>
                  <p>Register Student</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="enrol.php" class="nav-link">
                  <i class="fa fa-door-open nav-icon"></i>
                  <p>Enroll Students</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fa-solid fa-boxes-stacked"></i>
              <p>
                Supplies
                <i class="fas fa-angle-left right"></i>
                <span class="badge badge-danger right">3</span>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="supply.php" class="nav-link">
                  <i class="fa-solid fa-list-check nav-icon"></i>
                  <p>Inventory</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="stockin.php" class="nav-link">
                  <i class="fa-solid fa-right-to-bracket nav-icon"></i>
                  <p>Stockin</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="stockout.php" class="nav-link">
                  <i class="fa-solid fa-right-from-bracket nav-icon"></i>
                  <p>Stockout</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fa fa-list"></i>
              <p>
                Tracking
                <i class="fas fa-angle-left right"></i>
                <span class="badge badge-info right">2</span>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="incoming.php" class="nav-link">
                  <i class="fa fa-sign-in nav-icon"></i>
                  <p>Incoming</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="outgoing.php" class="nav-link">
                  <i class="fa fa-sign-out nav-icon"></i>
                  <p>Outgoing</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-copy"></i>
              <p>
                Authority To Travel
                <i class="fas fa-angle-left right"></i>
                <span class="badge badge-success right">2</span>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="travel_add.php" class="nav-link">
                  <i class="fa-solid fa-bus nav-icon"></i>
                  <p>Create New TO</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="travel_list.php" class="nav-link">
                  <i class="fa-solid fa-rectangle-list nav-icon"></i>
                  <p>View List of TO</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fa-solid fa-screwdriver-wrench"></i>
              <p>
                Maintenance
                <i class="fas fa-angle-left right"></i>
                <span class="badge badge-primary right">3</span>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="user.php" class="nav-link">
                  <i class="fa-solid fa-users nav-icon"></i>
                  <p>Users</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="supply.php" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Supplies</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="admin.php" class="nav-link">
                  <i class="fa-solid fa-user-gear nav-icon"></i>
                  <p>Admin</p>
                </a>
              </li>
            </ul>
          </li>
          
          
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fa-solid fa-chart-pie"></i>
              <p>
                Reports
                <i class="fas fa-angle-left right"></i>
                <span class="badge badge-info right">4</span>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="inventory.php" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Inventory Report</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="report_city.php" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Per City/Municipality</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="report_sex.php" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Per Sex</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="report_category.php" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Per Category</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item">
            <a href="settings.php" class="nav-link">
              <i class="nav-icon fas fa-cog"></i>
              <p>
                Settings
                <span class="right badge badge-danger">New</span>
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="logout.php" class="nav-link">
              <i class="nav-icon fas fa-power-off"></i>
              <p>
                Logout
                <span class="right badge badge-danger"></span>
              </p>
            </a>
          </li>
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>