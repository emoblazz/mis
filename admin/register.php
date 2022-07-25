<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title><?php include '../dist/includes/title.php';?> | Student Registration</title>
  <!-- Google Font: Source Sans Pro -->
  <?php include '../dist/includes/link.php';?>
</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">

  <!-- Preloader -->
  <div class="preloader flex-column justify-content-center align-items-center">
    <img class="animation__shake" src="../dist/img/logo.png" alt="SINHSLogo" height="60" width="60">
  </div>

  <!-- Navbar -->
  <?php include '../dist/includes/navbar.php';?>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <?php include '../dist/includes/sidebar.php';?>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Student Registration</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <?php include '../dist/includes/dbcon.php'; ?>
        <!-- Main row -->
        <div class="row">
          
          <!-- right col (We are only adding the ID to make the widgets sortable)-->
          <section class="col-lg-12 connectedSortable">

            <!-- Map card -->
            <div class="card card-danger shadow-lg">
              <div class="card-header border-0">
                <h3 class="card-title">
                  <i class="fas fa-map-marker-alt mr-1"></i>
                  Register New Student
                </h3>
              </div>
              <div class="card-body">
                <form method="post" action="functions.php">
                  <div class="row">
                    <div class="col-md-4">
                      <div class="form-group">
                          <label for="exampleInputEmail1">School Year</label>
                          <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter School Year" name="sy" value="2022-2023" readonly>
                      </div>
                    </div>
                    <div class="col-md-4">
                      <div class="form-group">
                          <label for="exampleInputEmail1">LRN #</label>
                          <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter 10 Digit LRN #" name="lrn">
                      </div>
                    </div>
                    <div class="col-md-4">
                      <div class="form-group">
                          <label for="exampleInputEmail1">Grade Level to Enrol</label>
                          <select class="form-control select2" style="width: 100%;" name="grade" placeholder="Select Category" required>
                            <option>Grade 7</option>
                            <option>Grade 8</option>
                            <option>Grade 9</option>
                            <option>Grade 10</option>
                            <option>Grade 11</option>
                            <option>Grade 12</option>
                          </select>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-4">
                      <div class="form-group">
                          <label for="exampleInputEmail1">Last Name</label>
                          <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter Enter Last Name" name="last" required>
                      </div>
                    </div>
                    <div class="col-md-4">
                      <div class="form-group">
                          <label for="exampleInputEmail1">First Name</label>
                          <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter First Name" name="first" required>
                      </div>
                    </div>
                    <div class="col-md-3">
                      <div class="form-group">
                          <label for="exampleInputEmail1">Middle Name</label>
                          <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter First Name" name="middle">
                      </div>
                    </div>
                    <div class="col-md-1">
                      <div class="form-group">
                          <label for="exampleInputEmail1">Extension</label>
                          <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Jr, II" name="ext">
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-4">
                      <div class="form-group">
                          <label for="exampleInputEmail1">Birthday</label>
                          <input type="date" class="form-control" id="exampleInputEmail1" placeholder="Enter Birthday" name="bday">
                      </div>
                    </div>
                    <div class="col-md-4">  
                        <div class="form-group">
                            <label for="exampleInputEmail1">Sex</label>
                            <div class="row">
                              <div class="col-lg-4">
                                <div class="form-check">
                                  <input class="form-check-input" type="radio" id="sex" name="sex" value="Male" checked required="true">
                                  <label class="form-check-label">Male</label>
                                </div>
                              </div>
                            <div class="col-md-4">
                              <div class="col-lg-4">
                                <div class="form-check">
                                  <input class="form-check-input" type="radio" id="sex" name="sex" value="Female" required="true">
                                  <label class="form-check-label">Female</label>
                                </div>
                              </div>
                            </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-4">
                      <div class="form-group">
                          <label for="exampleInputEmail1">Contact</label>
                          <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter Contact Number/s" name="contact" required>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-4">
                      <div class="form-group">
                          <label for="exampleInputEmail1">Address 1</label>
                          <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter Prk, Sitio, Street" name="address1" required>
                      </div>
                    </div>
                    <div class="col-md-4">
                      <div class="form-group">
                          <label for="exampleInputEmail1">Address 2</label>
                          <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter City/Municipality" name="address2" required>
                      </div>
                    </div>
                  </div>
                </div>
              <!-- /.card-body-->
              <div class="card-footer bg-transparent">
                <div class="row">
                  <div class="col-12 text-center">
                    <button type="submit" class="btn btn-success btn-block" name="add_student"><i class="fa fa-save"></i> Save</button>
                  </div>
                </div>
                <!-- /.row -->
              </div>
              </form>
            </div>
            <!-- /.card -->
          </section>
          <!-- right col -->
        </div>
        <!-- /.row (main row) -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <?php include '../dist/includes/footer.php';?>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<?php include '../dist/includes/script.php';?>
<script>
  $(function () {
    $("#example1").DataTable({
      "responsive": true, "lengthChange": false, "autoWidth": false,
      "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
    }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
    $('#example2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false,
      "responsive": true,
    });
  });
</script>
</body>
</html>
