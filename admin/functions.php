<?php 
session_start();
include('../dist/includes/dbcon.php');
//Add Archive
if (isset($_POST['add_archive']))
{
	$title = $_POST['title'];
	$desc = $_POST['desc'];
	$date = date("Y-m-d H:i:s");

	mysqli_query($con,"INSERT INTO archive(archive_title,archive_desc,archive_date) VALUES('$title','$desc','$date')")or die(mysqli_error($con));  

	$id=mysqli_insert_id($con);
	//$max_file_size = 100000*100; //10mb
	$path = "../dist/uploads/"; // Upload directory
	$count = 0;

	// Loop $_FILES to exeicute all files
	// Count the number of uploaded files in array
	$total_count = count($_FILES['file']['name']);
	// Loop through every file
	for( $i=0 ; $i < $total_count ; $i++ ) {
	   //The temp file path is obtained
	   
	      $name=$_FILES['file']['name'][$i]; 
			if(move_uploaded_file($_FILES["file"]["tmp_name"][$i], $path.$name))
			//$count++; // Number of successfully uploaded file
			
			mysqli_query($con,"INSERT INTO archive_details(archive_id,archive_file) VALUES('$id','$name')")or die(mysqli_error($con));  
	      
		   }
		
	//echo "<script type='text/javascript'>alert('Successfully added new category!');</script>";
	echo "<script>document.location='archive.php'</script>";   
	
}
//Add Form
if (isset($_POST['add_form']))
{
	$title = $_POST['title'];
	$desc = $_POST['desc'];
	$date = date("Y-m-d H:i:s");

	//$max_file_size = 100000*100; //10mb
	$path = "../dist/uploads/"; // Upload directory
	$count = 0;

	// Loop $_FILES to exeicute all files
	$name=$_FILES['file']['name']; 
	if(move_uploaded_file($_FILES["file"]["tmp_name"], $path.$name))
	//$count++; // Number of successfully uploaded file
	
	mysqli_query($con,"INSERT INTO form(form_title,form_desc,form_date,form_file) VALUES('$title','$desc','$date','$name')")or die(mysqli_error());  
	//echo "<script type='text/javascript'>alert('Successfully added new category!');</script>";
	echo "<script>document.location='forms.php'</script>";   
	
}
//Update Form
if (isset($_POST['update_form']))
{
	$id = $_POST['id'];
	$title = $_POST['title'];
	$desc = $_POST['desc'];
	//$file = $_POST['file'];
	//$file_old = $_POST['file_old'];
    $name=$_FILES['file']['name']; 
    if ($name<>"")
    {
		//$max_file_size = 100000*100; //10mb
		$path = "../dist/uploads/"; // Upload directory
		$count = 0;

		// Loop $_FILES to exeicute all files
		$name=$_FILES['file']['name']; 
		if(move_uploaded_file($_FILES["file"]["tmp_name"], $path.$name))
		//$count++; // Number of successfully uploaded file

		mysqli_query($con,"UPDATE form SET form_title='$title',form_desc='$desc',form_file='$name' where form_id='$id'") or die(mysqli_error()); 
	}			
	else{
		mysqli_query($con,"UPDATE form SET form_title='$title',form_desc='$desc' where form_id='$id'") or die(mysqli_error());
	}			
	 
	 	echo "<script>document.location='forms.php'</script>";   
}

//Delete Form	
if (isset($_POST['delete_form']))
{
	$id = $_POST['id'];
	
	 mysqli_query($con,"DELETE from form where form_id='$id'") or die(mysqli_error()); 
	 echo "<script>document.location='forms.php'</script>";   
}
//Add supply
if (isset($_POST['add_supply']))
{
	$name = $_POST['name'];
	$desc = $_POST['desc'];
	$unit = $_POST['unit'];
	$id = $_SESSION['id'];
	//$date=date("Y-m-d H:i:s");
	$reorder=$_POST['reorder'];
	
		mysqli_query($con,"INSERT INTO supply(supply_name,supply_desc,supply_unit,supply_reorder) VALUES('$name','$desc','$unit','$reorder')")or die(mysqli_error());  
		
			echo "<script>document.location='supply.php'</script>"; 
}
//Update supply
if (isset($_POST['update_supply']))
{
	$name = $_POST['name'];
	$desc = $_POST['desc'];
	$unit = $_POST['unit'];
	$id = $_POST['id'];
	//$date=date("Y-m-d H:i:s");
	$reorder=$_POST['reorder'];
	
		mysqli_query($con,"UPDATE supply SET supply_name='$name',supply_desc='$desc',supply_unit='$unit',supply_reorder='$reorder' where supply_id='$id'") or die(mysqli_error());
		
			echo "<script>document.location='supply.php'</script>"; 
}
//Add Incoming/Outgoing
if (isset($_POST['add_incoming']))
{
	$name = $_POST['name'];
	$subject = $_POST['subject'];
	$desc = $_POST['desc'];
	$remarks = $_POST['remarks'];
	$id = $_SESSION['id'];
	$date=date("Y-m-d H:i:s");
	$type=$_POST['type'];
	
		mysqli_query($con,"INSERT INTO doc(doc_name,doc_subject,doc_desc,doc_remarks,doc_date,user_id,doc_type) VALUES('$name','$subject','$desc','$remarks','$date','$id','$type')")or die(mysqli_error());  
		
		if ($type=="Incoming")
		{
			echo "<script>document.location='incoming.php'</script>"; 
		}
		else {
			echo "<script>document.location='outgoing.php'</script>"; 
		}
}
//Update Incoming
if (isset($_POST['update_incoming']))
{
	$id = $_POST['id'];
	$client = $_POST['client'];
	$subject = $_POST['subject'];
	$desc = $_POST['desc'];
	$remarks = $_POST['remarks'];

	 mysqli_query($con,"UPDATE doc SET doc_name='$client',doc_subject='$subject',doc_desc='$desc',doc_remarks='$remarks' where doc_id='$id'") or die(mysqli_error()); 
	 echo "<script>document.location='incoming.php'</script>";   
}

//Delete Supply	
if (isset($_POST['delete_supply']))
{
	$id = $_POST['id'];

	 mysqli_query($con,"DELETE from supply where supply_id='$id'") or die(mysqli_error()); 
	 echo "<script>document.location='supply.php'</script>";   
}
//Update Outgoing
if (isset($_POST['update_outgoing']))
{
	$id = $_POST['id'];
	$client = $_POST['client'];
	$subject = $_POST['subject'];
	$desc = $_POST['desc'];
	$remarks = $_POST['remarks'];

	 mysqli_query($con,"UPDATE doc SET doc_name='$client',doc_subject='$subject',doc_desc='$desc',doc_remarks='$remarks' where doc_id='$id'") or die(mysqli_error()); 
	 echo "<script>document.location='outgoing.php'</script>";   
}
//Delete Incoming	
if (isset($_POST['delete_incoming']))
{
	$id = $_POST['id'];

	 mysqli_query($con,"DELETE from doc where doc_id='$id'") or die(mysqli_error()); 
	 echo "<script>document.location='incoming.php'</script>";   
}
//Delete Outgoing	
if (isset($_POST['delete_outgoing']))
{
	$id = $_POST['id'];

	 mysqli_query($con,"DELETE from doc where doc_id='$id'") or die(mysqli_error()); 
	 echo "<script>document.location='outgoing.php'</script>";   
}
//Delete User	
if (isset($_POST['delete_user']))
{
	$id = $_POST['id'];
	
	 mysqli_query($con,"DELETE from user where user_id='$id'") or die(mysqli_error()); 
	 echo "<script>document.location='user.php'</script>";   
}
//Update User
if (isset($_POST['update_user']))
{
	$id = $_POST['id'];
	$last = strtoupper($_POST['last']);
	$first = strtoupper($_POST['first']);
	$bday = $_POST['bday'];
	$contact = $_POST['contact'];
	$address = strtoupper($_POST['address']);
	$city = $_POST['city'];
	$category = $_POST['category'];
	$sex = $_POST['sex'];
	
	if ($_POST['audio_new']<>""){
		$audio = "dist/audio/".$_POST['audio_new'];
	}
	else
	{
		$audio = $_POST['audio'];
	}

	 mysqli_query($con,"UPDATE user SET user_last='$last',user_first='$first',user_bday='$bday',user_contact='$contact',user_address='$address',city_id='$city',cat_id='$category',user_sex='$sex',audio='$audio' where user_id='$id'") or die(mysqli_error()); 
	 echo "<script>document.location='user.php'</script>";   
}
//Add User
if (isset($_POST['add_user']))
{
	include '../plugins/phpqrcode/qrlib.php';
	include '../dist/includes/dbcon.php';
	$last = strtoupper($_POST['last']);
	$first = strtoupper($_POST['first']);
	$bday = $_POST['bday'];
	$contact = $_POST['contact'];
	$address = strtoupper($_POST['address']);
	$city = $_POST['city'];
	$category = $_POST['category'];
	$sex = $_POST['sex'];
	
	$query=mysqli_query($con,"select * from user where user_first='$first' and user_last='$last' and user_bday='$bday'")or die(mysqli_error($con));
		$counter=mysqli_num_rows($query);
		if ($counter == 0) 
		  {	
			mysqli_query($con,"INSERT INTO user(user_last,user_first,user_bday,user_contact,user_address,city_id,cat_id,user_sex) VALUES('$last','$first','$bday','$contact','$address','$city','$category','$sex')")or die(mysqli_error($con));  

				$id=mysqli_insert_id($con);

				$fileName = $id.'.png'; 
				$tempDir = "../dist/img";                    // the directory to store the files
				$filePath = $tempDir . "/" . $fileName;
				QRcode::png($id, $filePath);         // note the second parameter

				mysqli_query($con,"UPDATE user SET qrcode='$filePath' where user_id='$id'") or die(mysqli_error()); 

			echo "<script type='text/javascript'>alert('Successfully added new user!');</script>";
			}
		else{
			echo "<script type='text/javascript'>alert('Record already exist!');</script>";
		}
			echo "<script>document.location='user.php'</script>"; 
}

//Add Admin
if (isset($_POST['add_admin']))
{
	$name = $_POST['name'];
	$contact = $_POST['contact'];
	$username = $_POST['username'];
	$password = md5($_POST['password']);
	
	mysqli_query($con,"INSERT INTO admin(fullname,contact,username,password,pic) VALUES('$name','$contact','$username','$password','../dist/img/avatar3.png')")or die(mysqli_error($con));  
	echo "<script type='text/javascript'>alert('Successfully added new administrator!');</script>";	
	echo "<script>document.location='admin.php'</script>";   
}
//Update Admin
if (isset($_POST['update_admin']))
{
	$id = $_POST['id'];
	$name = $_POST['name'];
	$contact = $_POST['contact'];
	$username = $_POST['username'];
	$password = md5($_POST['newpassword']);

	if ($_POST['newpassword'] =="")
	{
		mysqli_query($con,"UPDATE admin SET fullname='$name',contact='$contact',username='$username' where admin_id='$id'") or die(mysqli_error($con)); 
	}
	else
	{
	 mysqli_query($con,"UPDATE admin SET fullname='$name',contact='$contact',username='$username',password='$password' where admin_id='$id'") or die(mysqli_error($con)); 
	}
	 echo "<script>document.location='admin.php'</script>";   
}

//Delete Admin	
if (isset($_POST['delete_admin']))
{
	$id = $_POST['id'];
	
	 mysqli_query($con,"DELETE from admin where admin_id='$id'") or die(mysqli_error()); 
	 echo "<script>document.location='admin.php'</script>";   
}
//Add Settings
if (isset($_POST['add_settings']))
{
	$email = $_POST['email'];
	$time = $_POST['time'];
	
	mysqli_query($con,"INSERT INTO setting(email,`time`) VALUES('$email','$time')")or die(mysqli_error($con));  
	echo "<script type='text/javascript'>alert('Successfully added new settings!');</script>";	
	echo "<script>document.location='settings.php'</script>";   
}
//Delete Settings	
if (isset($_POST['delete_setting']))
{
	$id = $_POST['id'];
	
	 mysqli_query($con,"DELETE from setting where setting_id='$id'") or die(mysqli_error()); 
	 echo "<script>document.location='settings.php'</script>";   
}
//Update Settings
if (isset($_POST['update_setting']))
{
	$id = $_POST['id'];
	$email = $_POST['email'];
	$time = $_POST['time'];

	 mysqli_query($con,"UPDATE setting SET email='$email',`time`='$time' where setting_id='$id'") or die(mysqli_error()); 
	 echo "<script>document.location='settings.php'</script>";   
}
//Add Stockin
if (isset($_POST['add_stockin']))
{
	//$id = $_POST['id'];
	$name = $_POST['name'];
	$qty = $_POST['qty'];
	$date = date("Y-m-d H:i:s");
	$encoder = $_SESSION['id'];

	mysqli_query($con,"INSERT INTO stockin(supply_id,stockin_qty,stockin_date,admin_id) VALUES('$name','$qty','$date','$encoder')")or die(mysqli_error($con));  
	mysqli_query($con,"UPDATE supply SET supply_qty=supply_qty+'$qty' where supply_id='$name'") or die(mysqli_error()); 
	 echo "<script>document.location='stockin.php'</script>";   
}
//Add Stockout
if (isset($_POST['add_stockout']))
{
	//$id = $_POST['id'];
	$name = $_POST['name'];
	$qty = $_POST['qty'];
	$date = date("Y-m-d H:i:s");
	$encoder = $_SESSION['id'];
	$releasedto = $_POST['releasedto'];

	mysqli_query($con,"INSERT INTO stockout(supply_id,stockout_qty,stockout_date,admin_id,user_id) VALUES('$name','$qty','$date','$encoder','$releasedto')")or die(mysqli_error($con));  
	mysqli_query($con,"UPDATE supply SET supply_qty=supply_qty-'$qty' where supply_id='$name'") or die(mysqli_error()); 
	 echo "<script>document.location='stockout.php'</script>";   
}
?>
