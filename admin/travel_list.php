<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title><?php include '../dist/includes/title.php';?> | Travel List</title>
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
            <h1 class="m-0">Travel List</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Travel List</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        
        <!-- Main row -->
        <div class="row">
          <!-- Left col -->
          <section class="col-lg-12 connectedSortable">
            <!-- Custom tabs (Charts with tabs)-->
            <div class="card card-outline card-success">
              <div class="card-header">
                <h3 class="card-title">
                  <i class="fa fa-list-ul mr-1"></i>
                  List
                </h3>
              </div><!-- /.card-header -->
              <div class="card-body">
                <table id="example2" class="table table-bordered table-hover">
                  <thead>
                  <tr>
                    <th>Control #</th>
                    <th>Date Filed</th>
                    <th>Name/s</th>
                    <th>Purpose</th>
                    <th>Period Covered</th>
                    <th>Type</th>
                    <th>Destination</th>
                    <th>Expenses Covered</th>
                    <th>Fund Source</th>
                    <th>Signatory</th>
                    <th>Action</th>
                  </tr>
                  </thead>
                  <tbody>
                  <?php include '../dist/includes/dbcon.php';    
                  
                  $query=mysqli_query($con,"select * from travel natural join user order by travel_id desc")or die(mysqli_error($con));
                    $i=0;
                    while ($row=mysqli_fetch_array($query)){
                    $id=$row['travel_id'];
                    $control_no=$row['control_no'];
                    $date_filed=$row['travel_filed'];
                    $purpose=$row['travel_purpose'];
                    $period=$row['travel_period'];
                    $type=$row['travel_type'];
                    $venue=$row['travel_venue'];
                    $coverage=$row['travel_coverage'];
                    $source=$row['travel_source'];
                    $signatory=$row['user_last'].", ".$row['user_first'];
                    
                    $i++;      
                  ?>       
                  <tr>
                    <td><?php echo $control_no;?></td>
                    <td><?php echo $date_filed;?></td>
                    <td>
                      <?php 
                        $query1=mysqli_query($con,"select * from travel_details natural join user where travel_id='$id'")or die(mysqli_error($con));
                            while ($row1=mysqli_fetch_array($query1)){
                              echo $row1['user_last'].", ".$row1['user_first']."<br>";
                            }
                      ?>    
                    </td>
                    <td><?php echo $purpose;?></td>
                    <td><?php echo $period;?></td>
                    <td><?php echo $type;?></td>
                    <td><?php echo $venue;?></td>
                    <td><?php echo $coverage;?></td>
                    <td><?php echo $source;?></td>
                    <td><?php echo $signatory;?></td>
                    <td>
                      <a class="btn text-primary" href="travel_view.php?id=<?php echo $id;?>"><i class="fas fa-eye"></i></a>
                      <a class="btn text-success" data-toggle="modal" data-target="#modal-default<?php echo $id;?>"><i class="fas fa-edit"></i></a>
                      <a class="btn text-danger" data-toggle="modal" data-target="#modal-delete<?php echo $id;?>"><i class="fas fa-trash"></i></a>
                    </td>
                    <div class="modal fade" id="modal-default<?php echo $id;?>">
                        <div class="modal-dialog">
                          <div class="modal-content">
                            <form method="post" action="functions.php">
                              <div class="modal-header">
                                <h4 class="modal-title">Update Record</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                  <span aria-hidden="true">&times;</span>
                                </button>
                              </div>
                              <div class="modal-body">
                                <div class="form-group row">
                                  <label for="inputEmail3" class="col-sm-4 col-form-label">Supply Name</label>
                                  <div class="col-sm-8">
                                    <input type="text" class="form-control" id="inputEmail3" placeholder="Enter Name of Supply" name="name" value="<?php echo $name;?>" required>
                                    <input type="hidden" class="form-control" id="inputEmail3" name="id" value="<?php echo $id;?>">
                                  </div>
                                </div>
                                
                                <div class="form-group row">
                                  <label for="inputEmail3" class="col-sm-4 col-form-label">Description</label>
                                  <div class="col-sm-8">
                                    <textarea class="form-control" rows="3" placeholder="Enter form description" name="desc"><?php echo $desc;?></textarea>
                                  </div>
                                </div>
                                <div class="form-group row">
                                  <label for="inputEmail3" class="col-sm-4 col-form-label">Unit</label>
                                  <div class="col-sm-8">
                                    <input type="text" class="form-control" id="inputEmail3" placeholder="Enter Unit of Mesurement" name="unit" value="<?php echo $unit;?>" required>
                                  </div>
                                </div>
                                <div class="form-group row">
                                  <label for="inputEmail3" class="col-sm-4 col-form-label">Reorder Point</label>
                                  <div class="col-sm-8">
                                    <input type="number" class="form-control" id="inputEmail3" placeholder="Enter Reorder Point" name="reorder" value="<?php echo $reorder;?>" required>
                                  </div>
                                </div>
                              </div>
                              <div class="modal-footer justify-content-between">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                <button type="submit" class="btn btn-success" name="update_supply">Save changes</button>
                              </div>
                            </form>
                          </div>
                          <!-- /.modal-content -->
                        </div>
                        <!-- /.modal-dialog -->
                      </div>
                      <!-- /.modal -->
                      <div class="modal fade" id="modal-delete<?php echo $id;?>">
                        <div class="modal-dialog">
                          <div class="modal-content">
                            <form method="post" action="functions.php">
                              <div class="modal-header">
                                <h4 class="modal-title">Remove Record</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                  <span aria-hidden="true">&times;</span>
                                </button>
                              </div>
                              <div class="modal-body">
                                <p>Are you sure you want to remove travel with control # <?php echo $control_no;?>?</p>
                                <input type="hidden" class="form-control" id="inputEmail3" placeholder="Category" name="id" value="<?php echo $id;?>">
                              </div>
                              <div class="modal-footer justify-content-between">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                <button type="submit" class="btn btn-success" name="delete_travel">Delete</button>
                              </div>
                            </form>
                          </div>
                          <!-- /.modal-content -->
                        </div>
                        <!-- /.modal-dialog -->
                      </div>
                      <!-- /.modal -->
                  <?php }?>  
                  </tr>
                  </tbody>
                  <tfoot>
                  <tr>
                    <th>Control #</th>
                    <th>Date Filed</th>
                    <th>Name/s</th>
                    <th>Purpose</th>
                    <th>Period Covered</th>
                    <th>Type</th>
                    <th>Destination</th>
                    <th>Expenses Covered</th>
                    <th>Fund Source</th>
                    <th>Signatory</th>
                    <th>Action</th>
                  </tr>
                  </tfoot>
                </table>
              </div><!-- /.card-body -->
            </div>
            <!-- /.card -->
          </section>
          <!-- /.Left col -->
          
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
