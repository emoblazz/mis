<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title><?php include '../dist/includes/title.php';?> | Create Travel Order</title>
  <!-- Google Font: Source Sans Pro -->
  <?php include '../dist/includes/link.php';?>
</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">

  <!-- Preloader 
  <div class="preloader flex-column justify-content-center align-items-center">
    <img class="animation__shake" src="../dist/img/logo.png" alt="SINHSLogo" height="60" width="60">
  </div>-->

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
            <h1 class="m-0">Create Travel Order</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Create Travel Order</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <?php
          include '../dist/includes/dbcon.php';    
          $year=0;
          $year=date("Y");
          $query1=mysqli_query($con,"select * from travel where control_no LIKE '%$year%' order by control_no desc")or die(mysqli_error());
              $row1=mysqli_fetch_array($query1);
              $count=mysqli_num_rows($query1);
              if ($count<>0)
              {
                $control_no=$row1['control_no'];
                $control_no=substr($control_no, -3, 3);
                $control_no=$control_no+1;
              }
              else
              {
                $control_no=1;
              }
              
        ?>
        <!-- Main row -->
        <div class="row">
          
          <!-- right col (We are only adding the ID to make the widgets sortable)-->
          <section class="col-lg-12 connectedSortable">

            <!-- Map card -->
            <div class="card card-danger shadow-lg">
              <div class="card-header border-0">
                <h3 class="card-title">
                  <i class="fas fa-map-marker-alt mr-1"></i>
                  Create New Travel Order
                </h3>
              </div>
              <div class="card-body">
                <form method="post" action="functions.php" enctype='multipart/form-data'>
                <div class="row">
                  <div class="col-lg-6">
                    <div class="form-group">
                      <label class="control-label" for="last">Control #</label>
                        <input type="text" class="form-control" id="exampleInputPassword1" placeholder="Control #" name="control_no" value="<?php echo date("Y-m-");?><?php echo str_pad($control_no, 3, '0', STR_PAD_LEFT);?>" readonly> 
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail1">Name</label>
                      <select class="form-control select2" multiple="multiple" style="width: 100%;" name="name[]" placeholder="Select Name/s">

                        <?php
                          
                          $query2=mysqli_query($con,"select * from user order by user_last, user_first")or die(mysqli_error($con));
                            while($row2=mysqli_fetch_array($query2)){
                        ?>
                            <option value="<?php echo $row2['user_id'];?>"><?php echo $row2['user_last'].", ".$row2['user_first'];?></option>
                        <?php }?>
                      </select>
                    </div>
                 
                    <div class="form-group">
                      <label for="exampleInputEmail1">Purpose of Travel</label>
                      <textarea class="form-control" rows="3" placeholder="Enter Purpose of Travel" name="purpose"></textarea>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail1">Activity Organized / Sponsored By</label>
                      <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter Subject" name="organizer">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Period Covered</label>
                        <input type="date" class="form-control" id="exampleInputEmail1" placeholder="Enter Subject" name="period" required>
                    </div>
                  </div>
                  <div class="col-lg-6">
                    
                    <div class="form-group">
                        <label for="exampleInputEmail1">Please Select Type</label>
                        <select class="form-control select2" data-placeholder="Select Type" name="type" style="width: 100%;">
                          <option>Official Time</option>
                          <option>Official Business</option>
                        </select> 
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Venue/Destination</label>
                        <textarea class="form-control" rows="3" placeholder="Enter form description" name="venue"></textarea>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Expenses Covered</label>
                        <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter Subject" name="coverage" value="MOOE" required>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Fund Source</label>
                        <input type="number" class="form-control" id="exampleInputEmail1" placeholder="Enter Subject" name="source" value="5020101000" required>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail1">Signatory</label>
                      <select class="form-control select2" style="width: 100%;" name="signatory" placeholder="Select Name/s">

                        <?php
                          
                          $query2=mysqli_query($con,"select * from user order by user_last, user_first")or die(mysqli_error($con));
                            while($row2=mysqli_fetch_array($query2)){
                        ?>
                            <option value="<?php echo $row2['user_id'];?>"><?php echo $row2['user_last'].", ".$row2['user_first'];?></option>
                        <?php }?>
                      </select>
                    </div>
             
                    <!-- /.card-body-->
                    <div class="card-footer bg-transparent">
                      <div class="row">
                        <div class="col-12 text-center">
                          <button type="submit" class="btn btn-success btn-block" name="add_travel"><i class="fa fa-save"></i> Save</button>
                        </div>
                      </div>
                      <!-- /.row -->
                    </div>
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
    //Initialize Select2 Elements
    $('.select2').select2();

    $("#example1").DataTable({
      "responsive": true, "lengthChange": false, "autoWidth": false,
      "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
    }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
    $('#example2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": true,
      "ordering": true,
      "info": true,
      "autoWidth": true,
      "responsive": true,
    });
  });
</script>
</body>
</html>
