<?php
session_start();
error_reporting(0);
include('include/config.php');
if(strlen($_SESSION['id']==0)) 
{
	header('location:logout.php');
} else{
if(isset($_POST['submit']))
  {
    
    $vid=$_GET['viewid'];
    $bp=$_POST['bp'];
    $bs=$_POST['bs'];
    $weight=$_POST['weight'];
    $temp=$_POST['temp'];
	$ge=$_POST['ge'];
	$dia=$_POST['dia'];
	$rec=$_POST['rec'];
   
	$query.=mysqli_query($con, "insert   tblmedicalhistory(PatientID,BloodPressure,BloodSugar,Weight,Temperature,GeneralExamination,Diagnosis,MedicalPres)value('$vid','$bp','$bs','$weight','$temp','$ge','$dia','$rec')");
    if ($query) {
		echo '<script>alert("Medicle history has been added.")</script>';
		echo "<script>window.location.href ='view-patient.php?viewid=$vid'</script>";
	}
	else
    {
      echo '<script>alert("Something Went Wrong. Please try again")</script>';
    }
}
if(isset($_POST['update']))
{
	
	$vid=$_GET['viewid'];
	$alle=$_POST['allergic'];
	$surgery=$_POST['surgery'];
	$disease=$_POST['disease'];
	$vaccination=$_POST['vaccination'];
	$sql=mysqli_query($con,"Update users set allergic='$alle',surgery='$surgery',disease='$disease',vaccination='$vaccination' where id='$vid'");
	if($sql)
	{
		echo '<script>alert("Past medical records have been updated.")</script>'; 
		echo "<script>window.location.href ='view-patient.php?viewid=$vid'</script>";
	}
	else
    {
      echo '<script>alert("Something Went Wrong. Please try again")</script>';
    }
}

?>
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Doctor | Manage Patients</title>
		
		<!--Favicons-->
		<link href="NewLogoVMed.png" rel="icon">
		<link href="http://fonts.googleapis.com/css?family=Lato:300,400,400italic,600,700|Raleway:300,400,500,600,700|Crete+Round:400italic" rel="stylesheet" type="text/css" />
		<link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="vendor/fontawesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="vendor/themify-icons/themify-icons.min.css">
		<link href="vendor/animate.css/animate.min.css" rel="stylesheet" media="screen">
		<link href="vendor/perfect-scrollbar/perfect-scrollbar.min.css" rel="stylesheet" media="screen">
		<link href="vendor/switchery/switchery.min.css" rel="stylesheet" media="screen">
		<link href="vendor/bootstrap-touchspin/jquery.bootstrap-touchspin.min.css" rel="stylesheet" media="screen">
		<link href="vendor/select2/select2.min.css" rel="stylesheet" media="screen">
		<link href="vendor/bootstrap-datepicker/bootstrap-datepicker3.standalone.min.css" rel="stylesheet" media="screen">
		<link href="vendor/bootstrap-timepicker/bootstrap-timepicker.min.css" rel="stylesheet" media="screen">
		<link rel="stylesheet" href="assets/css/styles.css">
		<link rel="stylesheet" href="assets/css/plugins.css">
		<link rel="stylesheet" href="assets/css/themes/theme-1.css" id="skin_color" />
	</head>
	<body>
		<div id="app">		
			<?php include('include/sidebar.php');?>
			<div class="app-content">
				<?php include('include/header.php');?>
				<div class="main-content" >
					<div class="wrap-content container" id="container">
										<!-- start: PAGE TITLE -->
						<section id="page-title">
							<div class="row">
								<div class="col-sm-8">
									<h1 class="mainTitle">Doctor | Manage Patients</h1>
								</div>
								<ol class="breadcrumb">
									<li>
										<span>Doctor</span>
									</li>
									<li class="active">
										<span>Manage Patients</span>
									</li>
								</ol>
							</div>
						</section>
						<div class="container-fluid container-fullw bg-white">
							<div class="row">
								<div class="col-md-12">
									<h5 class="over-title margin-bottom-15">Manage <span class="text-bold">Patients</span></h5>
										<?php
											$vid=$_GET['viewid'];
											$ret=mysqli_query($con,"select * from users where id='$vid'");
											$cnt=1;
											while ($row=mysqli_fetch_array($ret)) 
											{
										?>
											<table border="1" class="table table-bordered">
												<tr align="center">
													<td colspan="4" style="font-size:20px;color:blue">Patient Details</td>
												</tr>

												<tr>
													<th scope>Student Name</th>
													<td><?php  echo $row['fullName'];?></td>
													<th scope>Student Email</th>
													<td><?php  echo $row['email'];?></td>
												</tr>
												<tr>
													<th scope>Student Reg No</th>
													<td><?php  echo $row['id'];?></td>
													<th>Student Gender</th>
													<td><?php  echo $row['gender'];?></td>
												</tr>
												<tr>
													<th>Student Address</th>
													<td><?php  echo $row['address'];?></td>
													<th>Student City</th>
													<td><?php  echo $row['city'];?></td>
												</tr>
												<tr>
													<th>Student Course</th>
													<td><?php  echo $row['course'];?></td>
													<th>Student Department</th>
													<td><?php  echo $row['department'];?></td>
												</tr>
												<tr>
													<th>Student Faculty</th>
													<td><?php  echo $row['faculty'];?></td>
													<th>Student Blood Group</th>
													<td><?php  echo $row['bloodgroup'];?></td>
												</tr>
												
												<form method="post" name="update">
												<tr>
													<th>Allergies </th>
													<td><textarea name="allergic" class="form-control"><?php echo htmlentities($row['allergic']);?></textarea></td>
													
													<th>Surgery </th>
													<td><textarea name="surgery" class="form-control"><?php echo htmlentities($row['surgery']);?></textarea></td>
												</tr>
												<tr>
													<th>Disease 
													<p style="color:grey;font-size:11px;">[Bronchial Asthma,Hypertension,DM,<br/>Hyper/Hypo thyrodism,Epiliepsy,<br/>Tuberculosis,Dyslipidemia]</p>
													</th>
													<td><textarea name="disease" class="form-control"><?php echo htmlentities($row['disease']);?></textarea></td>
													
													<th>Vaccination </th>
													<td><textarea name="vaccination" class="form-control"><?php echo htmlentities($row['vaccination']);?></textarea></td>
												</tr>
												
												
										<?php }?>
									</table>
									<p align="center">
									<button type="submit" name="update" class="btn btn-primary waves-effect waves-light w-lg">Update Past Medical History</button>
									</p>
									</form>
									
									<?php  
										$ret=mysqli_query($con,"select * from tblmedicalhistory  where PatientID='$vid'");
									 ?>
									<table id="datatable" class="table table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
										<tr align="center">
											<th colspan="8" >Medical History</th> 
										</tr>
										<tr>
											<th>#</th>
											<th>Blood Pressure</th>
											<th>Weight</th>
											<th>Blood Sugar</th>
											<th>Body Temprature</th>
											<th>General Examination</th>
											<th>Probable Diagnosis</th>
											<th>Recommendation</th>
											<th>Visit Date</th>
										</tr>
										<?php  
											while ($row=mysqli_fetch_array($ret)) { 
										?>
										<tr>
											<td><?php echo $cnt;?></td>
											<td><?php  echo $row['BloodPressure'];?></td>
											<td><?php  echo $row['Weight'];?></td>
											<td><?php  echo $row['BloodSugar'];?></td> 
											<td><?php  echo $row['Temperature'];?></td>
											<td><?php  echo $row['GeneralExamination'];?></td>
											<td><?php  echo $row['Diagnosis'];?></td>
											<td><?php  echo $row['MedicalPres'];?></td>
											<td><?php  echo $row['CreationDate'];?></td> 
										</tr>
										<?php $cnt=$cnt+1;} ?>
									</table>

									<p align="center">                            
									<button class="btn btn-primary waves-effect waves-light w-lg" data-toggle="modal" data-target="#myModal">Add Medical Records</button></p>  

									<?php  ?>
									<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
										<div class="modal-dialog" role="document">
											<div class="modal-content">
												<div class="modal-header">
													<h5 class="modal-title" id="exampleModalLabel">New Medical Details</h5>
													<button type="button" class="close" data-dismiss="modal" aria-label="Close">
														<span aria-hidden="true">&times;</span>
													</button>
												</div>
												<div class="modal-body">
													<?php  
														$ret=mysqli_query($con,"select * from tblmedicalhistory  where PatientID='$vid'");
													?>
													<table class="table table-bordered table-hover data-tables">
														<form method="post" name="submit">
															<tr>
															<th>Reg No:</th>
																<?php  
																$row=mysqli_fetch_array($ret)
																?>
																<td><?php  echo $row['PatientID'];?></td>
															</tr>
															<?php  ?>
															<tr>
																<th>Blood Pressure :</th>
																<td><input name="bp" placeholder="Blood Pressure" class="form-control wd-450" required="true"></td>
															</tr>                          
															<tr>
																<th>Blood Sugar :</th>
																<td><input name="bs" placeholder="Blood Sugar" class="form-control wd-450" required="true"></td>
															</tr> 
															<tr>
																<th>Weight :</th>
																<td>
																<input name="weight" placeholder="Weight" class="form-control wd-450" required="true"></td>
															</tr>
															<tr>
																<th>Body Temprature :</th>
																<td>
																<input name="temp" placeholder="Body Temprature" class="form-control wd-450" required="true"></td>
															</tr>
															<tr>
																<th>General Examination :</th>
																<td>
																<input name="ge" placeholder="General Examination" class="form-control wd-450" required="true"></td>
															</tr>
															<tr>
																<th>Probable Diagnosis :</th>
																<td>
																<input name="dia" placeholder="Probable Diagnosis" class="form-control wd-450" required="true"></td>
															</tr>															
															<tr>
																<th>Recommendation :</th>
																<td>
																<textarea name="rec" placeholder="Medical Recommendation" rows="12" cols="14" class="form-control wd-450" required="true"></textarea></td>
															</tr>  
										   
													</table>
												</div>
															<div class="modal-footer">
																<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
																<button type="submit" name="submit" class="btn btn-primary">Submit</button>
													  
														</form>
															</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
					<!-- start: FOOTER -->
			<?php include('include/footer.php');?>
					<!-- end: FOOTER -->
				
					<!-- start: SETTINGS -->
			<?php include('include/setting.php');?>
					
					<!-- end: SETTINGS -->
		</div>
				<!-- start: MAIN JAVASCRIPTS -->
				<script src="vendor/jquery/jquery.min.js"></script>
				<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
				<script src="vendor/modernizr/modernizr.js"></script>
				<script src="vendor/jquery-cookie/jquery.cookie.js"></script>
				<script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
				<script src="vendor/switchery/switchery.min.js"></script>
				<!-- end: MAIN JAVASCRIPTS -->
				<!-- start: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
				<script src="vendor/maskedinput/jquery.maskedinput.min.js"></script>
				<script src="vendor/bootstrap-touchspin/jquery.bootstrap-touchspin.min.js"></script>
				<script src="vendor/autosize/autosize.min.js"></script>
				<script src="vendor/selectFx/classie.js"></script>
				<script src="vendor/selectFx/selectFx.js"></script>
				<script src="vendor/select2/select2.min.js"></script>
				<script src="vendor/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>
				<script src="vendor/bootstrap-timepicker/bootstrap-timepicker.min.js"></script>
				<!-- end: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
				<!-- start: CLIP-TWO JAVASCRIPTS -->
				<script src="assets/js/main.js"></script>
				<!-- start: JavaScript Event Handlers for this page -->
				<script src="assets/js/form-elements.js"></script>
				<script>
					jQuery(document).ready(function() {
						Main.init();
						FormElements.init();
					});
				</script>
				<!-- end: JavaScript Event Handlers for this page -->
				<!-- end: CLIP-TWO JAVASCRIPTS -->
	</body>
</html>
<?php }  ?>
