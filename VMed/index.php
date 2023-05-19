<?php
include_once('vmed/include/config.php');
if(isset($_POST['submit']))
{
$name=$_POST['fullname'];
$email=$_POST['emailid'];
$mobileno=$_POST['mobileno'];
$dscrption=$_POST['description'];
$query=mysqli_query($con,"insert into tblcontactus(fullname,email,contactno,message) value('$name','$email','$mobileno','$dscrption')");
echo "<script>alert('Your information succesfully submitted');</script>";
echo "<script>window.location.href ='index.php'</script>";

} ?>
<!doctype html>
<html lang="en">

	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<title> VMed </title>
		
		<!--Favicons-->
		<link href="assets/images/NewLogoVMed.png" rel="icon">
		
		<link rel="shortcut icon" href="assets/images/fav.jpg">
		<link rel="stylesheet" href="assets/css/bootstrap.min.css">
		<link rel="stylesheet" href="assets/css/fontawsom-all.min.css">
		 <link rel="stylesheet" href="assets/css/animate.css">
		<link rel="stylesheet" type="text/css" href="assets/css/style.css" />
		
		<style>
			.content {
				 width:400px;
			  padding: 30px;
			  background: #1977cc;
			  border-radius: 4px;
			  color: #fff;
			}

			.content h3 {
			  font-weight: 700;
			  font-size: 34px;
			  margin-bottom: 30px;
			}

			.content p {
			  margin-bottom: 30px;
			  width:350px;
			}

		</style>
	</head>

	<body>

		<!-- ################# Header Starts Here#######################--->
		
		  <header id="menu-jk">
		
			<div id="nav-head" class="header-nav">
				<div class="container">
					<div class="row">
						<div class="col-lg-2 col-md-3  col-sm-12" style="color:#000;font-weight:bold; font-size:42px; margin-top: 1% !important;"><img src="assets/images/NewLogoVMed.png" alt="VMed logo"style="width:70px; height:70px;">
						   <a data-toggle="collapse" data-target="#menu" href="#menu" ><i class="fas d-block d-md-none small-menu fa-bars"></i></a>
						</div>
						<div id="menu" class="col-lg-8 col-md-9 d-none d-md-block nav-item">
							<ul>
								<li><a href="#">Home</a></li>
								<li><a href="#services">Services</a></li>
								<li><a href="#about_us">About Us</a></li>
								<li><a href="#gallery">Gallery</a></li>
								<li><a href="#contact_us">Contact Us</a></li>
								<li><a href="#logins">Login</a></li>  
							</ul>
						</div>
						
					</div>

				</div>
			</div>
		</header>
		
		 <!-- ################# Slider Starts Here#######################--->

		<div class="slider-detail">

			
			<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
				<ol class="carousel-indicators">
					<li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
					<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
				</ol>
				<div class="carousel-inner">
					<div class="carousel-item ">
						<img class="d-block w-100" src="assets/images/slider/image3.jpg" alt="Second slide">
						<div class="carousel-cover"></div>
						<div class="carousel-caption vdg-cur d-none d-md-block">
							<h5 class="animated bounceInDown">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Welcome to VMed</h5><br>
							<h3 class="animated bounceInDown">Medical Centre of University of Vavuniya</h3> 
							
						</div>
					</div>                
					<div class="carousel-item active">
						<img class="d-block w-100" src="assets/images/slider/image1.png" alt="Third slide">
						<div class="carousel-cover"></div>
						<div class="carousel-caption vdg-cur d-none d-md-block">
						   <h5 class="animated bounceInDown">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Welcome to VMed</h5><br>
							<h3 class="animated bounceInDown">Medical Centre of University of Vavuniya</h3> 
							<div class="content">
							  <h3>What is VMed?</h3>
							  <p align="justify">
								VMed is a web application which enables students to take care of their wellbeing in an effective way. This has been lead to improve the standards of the health center of university of vavuniya. Students can have consulatation services in a modern way with the use of VMed web application.
							  </p>
           
						</div>
						</div>
						
					</div>
				</div>
					<a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a>
					<a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>
			</div>
		</div>
		
	  <!--  ************************* Logins ************************** -->
		
		 <section id="logins" class="our-blog container-fluid">
			<div class="container">
				<div class="inner-title">
					<h2>Login</h2>
				</div>
				<div class="col-sm-12 blog-cont">
					<div class="row no-margin">
						<div class="col-sm-4 blog-smk">
							<div class="blog-single">
								<img src="assets/images/patient.jpg" alt="">
								<div class="blog-single-det">
									<h6>Students Login</h6>
									<a href="vmed/user-login.php">
										<button class="btn btn-success btn-sm">Click Here</button>
									</a>
								</div>
							</div>
						</div>
						<div class="col-sm-4 blog-smk">
							<div class="blog-single">
								<img src="assets/images/doctor.jpg" alt="">
								<div class="blog-single-det">
									<h6>Doctors login</h6>
									<a href="vmed/doctor">
										<button class="btn btn-success btn-sm">Click Here</button>
									</a>
								</div>
							</div>
						</div>
						<div class="col-sm-4 blog-smk">
							<div class="blog-single">
									<img src="assets/images/admin.jpg" alt="">
								<div class="blog-single-det">
									<h6>Admin Login</h6>
									<a href="vmed/admin">
										<button class="btn btn-success btn-sm">Click Here</button>
									</a>
								</div>
							</div>
						</div>    
					</div>
				</div>    
			</div>
		</section>  
		<!-- ################# Our Departments Starts Here#######################--->
		<section id="services" class="key-features department">
			<div class="container">
				<div class="inner-title">
					<h2>Our Key Features</h2>
					<p>Take a look at some of our key features</p>
				</div>
				<div class="row">
					<div class="col-lg-4 col-md-6">
						<div class="single-key">
							<i class="fas fa-heartbeat"></i>
							<h5>Medical Counselling</h5>
						</div>
					</div>

					<div class="col-lg-4 col-md-6">
						<div class="single-key">
							<i class="fas fa-ribbon"></i>
							<h5>Health Education</h5>
						</div>
					</div>

					<div class="col-lg-4 col-md-6">
						<div class="single-key">
						   <i class="fab fa-monero"></i>
							<h5>Oral Healthcare</h5>
						</div>
					</div>
					
					<div class="col-lg-4 col-md-6">
						<div class="single-key">
							<i class="fas fa-capsules"></i>
							<h5>Vaccination</h5>
						</div>
					</div>

					<div class="col-lg-4 col-md-6">
						<div class="single-key">
							<i class="fas fa-prescription-bottle-alt"></i>
							<h5>Eye Clinic & Refraction</h5>
						</div>
					</div>

					<div class="col-lg-4 col-md-6">
						<div class="single-key">
							<i class="far fa-thumbs-up"></i>
							<h5>High Quality treatments</h5>

						</div>
					</div>
				</div>
			</div>
		</section>
		
		<!--  ************************* About Us Starts Here ************************** -->
			
		<section id="about_us" class="about-us">
			<!--<div class="row no-margin">
				<div class="col-sm-6 image-bg no-padding">
					
				</div>-->
				<div class="col-sm-12 abut-yoiu">
					<h3 align="center">About Our Medical Centre</h3><br>
						<p>	The Health Centre of Northern Provincial Affiliated University College 
						(NPAUC) was established in 1992. and was functioning at Kurumankadu. Later 
						in 1997 NPAUC became the Vavuniya Campus of the University of Jaffna and Heath
						Centers were functioning in two locations one at Park Road, Vavuniya and the 
						other at Pampaimadu campus premises. Visiting MOs and part-time health service
						assistants were treating students and staff for ailments and referred patients 
						to General hospital Vavuniya for further treatment. The University Health 
						Center which is headed by a Chief Medical Officer/ University Medical Officer 
						(UMO) is responsible for providing medical care to students and staff of the
						University. Permanent UMO is appointed to the health Centre of Vavuniya Campus
						of the University of Jaffna in 2021.</p>
							  
						<p>University Health Services is established to provide health care facilities
						to the employees and students attached to the university. 
						Health Centre is the service point in providing health care
						services in the university, where preventive and curative services are 
						provided in order to promote healthy living. All university students and 
						staff are entitled to get free consultation and treatment at this Centre.</p>
				</div>
			</div>
		</section>    
			  <!--  ************************* Staff Starts Here ************************** -->
		<div class="inner-title">
				<h2>Our Staff</h2>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-sm" align="center">
					<div class="pic"><img src="assets/images/doctors/doctors-1.jpg" class="img-fluid" alt="Doctor" style="width:150px; height:150px;"></div><br>
						<h4>Dr. P. Sathiyalingam</h4>
						<span>University Medical Officer</span>
				</div>
				<div class="col-sm" align="center">
				   <div class="pic"><img src="assets/images/doctors/doctors-2.png" class="img-fluid" alt="Nursing officer" style="width:150px; height:150px;"></div><br>
						<h4>Miss. Pavitha Vijayakumar</h4>
						<span>Nursing Officer</span>
				</div>
				<div class="col-sm" align="center">
				   <div class="pic"><img src="assets/images/doctors/doctors-3.png" class="img-fluid" alt="Assistant" style="width:150px; height:150px;"></div><br>
						<h4>Mrs. Sanmugaraja Thushanthi</h4>
						<span>Health Service Assistant (On Call)</span>
				</div>
			</div>
		</div>
				<!--  ************************* Gallery Starts Here ************************** -->
			<div id="gallery" class="gallery">    
				<div class="container">
					<div class="inner-title">

						<h2>Our Gallery</h2>
						<p>View Our Gallery</p>
					</div>
					<div class="row">
						<br/>
						<div class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter hdpe">
							<img src="assets/images/gallery/image01.png" class="img-responsive">
						</div>

						<div class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter sprinkle">
							<img src="assets/images/gallery/image02.jpg" class="img-responsive">
						</div>

						<div class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter hdpe">
							<img src="assets/images/gallery/image03.jpg" class="img-responsive">
						</div>

						<div class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter irrigation">
							<img src="assets/images/gallery/image04.jpg" class="img-responsive">
						</div>

						<div class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter spray">
							<img src="assets/images/gallery/image05.jpg" class="img-responsive">
						</div>

						<div class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter spray">
							<img src="assets/images/gallery/image08.jpg" class="img-responsive">
						</div>
					</div>
				</div>
			</div>
			<!-- ######## Gallery End ####### -->
		
		
		 <!--  ************************* Contact Us Starts Here ************************** -->
		
		<section id="contact_us" class="contact-us-single">
			<div class="row no-margin">
				<div  class="col-sm-12 cop-ck">
					<form method="post">
						<h2 >Feedback Form</h2>
							
							<div  class="row cf-ro">
								<div  class="col-sm-3"><label>Email Address :</label></div>
								<div class="col-sm-8"><input type="text" name="emailid" placeholder="Enter Email Address" class="form-control input-sm"  required></div>
							</div>
							
							<div  class="row cf-ro">
								<div  class="col-sm-3"><label>Enter  Feedback:</label></div>
								<div class="col-sm-8">
								  <textarea rows="5" placeholder="Enter Your feedback" class="form-control input-sm" name="description" required></textarea>
								</div>
							</div>
							 <div  class="row cf-ro">
								<div  class="col-sm-3"><label></label></div>
								<div class="col-sm-8">
								 <button class="btn btn-success btn-sm" type="submit" name="submit">Submit</button>
								</div>
							</div>
					</form>
				</div>
		 
			</div>
		</section>
	  
		<!-- ################# Footer Starts Here#######################--->

		<footer class="footer">
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-sm-12">
						<h2>Useful Links</h2>
						<ul class="list-unstyled link-list">
							<li><a href="#about_us">About us<i class="fa fa-angle-right"></i></a></li>
							<li><a href="#services">Services<i class="fa fa-angle-right"></i></a></li>
							<li><a href="#logins">Logins<i class="fa fa-angle-right"></i></a></li>
							<li><a href="#gallery">Gallery<i class="fa fa-angle-right"></i></a></li>
							<li><a href="#contact_us">Contact us<i class="fa fa-angle-right"></i></a></li>
						</ul>
					</div>
					<div class="col-md-6 col-sm-12 map-img">
						<h2>Contact Us</h2>
						<address class="md-margin-bottom-40">
							Phone: 024 2224674 <br>
							Email: <a href="mailto:umo@vau.ac.lk"> umo@vau.ac.lk</a><br>
							Timing: 8 a.m to 4 p.m
						</address>
					</div>
				</div>
			</div>
		</footer>
		<div class="copy">
			<div class="container">
				<center>&copy; VMed. All Rights Reserved</center>
			</div>
		</div>
		
	</body>

	<script src="assets/js/jquery-3.2.1.min.js"></script>
	<script src="assets/js/popper.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/plugins/scroll-nav/js/jquery.easing.min.js"></script>
	<script src="assets/plugins/scroll-nav/js/scrolling-nav.js"></script>
	<script src="assets/plugins/scroll-fixed/jquery-scrolltofixed-min.js"></script>

	<script src="assets/js/script.js"></script>


</html>