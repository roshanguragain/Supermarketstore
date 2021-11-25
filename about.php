<?php
session_start();
error_reporting(0);
include('includes/config.php');
if(isset($_GET['action']) && $_GET['action']=="add"){
	$id=intval($_GET['id']);
	if(isset($_SESSION['cart'][$id])){
		$_SESSION['cart'][$id]['quantity']++;
	}else{
		$sql_p="SELECT * FROM products WHERE id={$id}";
		$query_p=mysqli_query($con,$sql_p);
		if(mysqli_num_rows($query_p)!=0){
			$row_p=mysqli_fetch_array($query_p);
			$_SESSION['cart'][$row_p['id']]=array("quantity" => 1, "price" => $row_p['productPrice']);
			header('location:index.php');
		}else{
			$message="Product ID is invalid";
		}
	}
}


?>
<!DOCTYPE html>
<html lang="en">
	<head>
		<!-- Meta -->
		<meta charset="utf-8">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
		<meta name="description" content="">
		<meta name="author" content="">
	    <meta name="keywords" content="MediaCenter, Template, eCommerce">
	    <meta name="robots" content="all">

	    <title> Home Page</title>

	    <!-- Bootstrap Core CSS -->
	    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
	    
	    <!-- Customizable CSS -->
	    <link rel="stylesheet" href="assets/css/main.css">
	    <link rel="stylesheet" href="assets/css/green.css">
	    <link rel="stylesheet" href="assets/css/owl.carousel.css">
		<link rel="stylesheet" href="assets/css/owl.transitions.css">
		<!--<link rel="stylesheet" href="assets/css/owl.theme.css">-->
		<link href="assets/css/lightbox.css" rel="stylesheet">
		<link rel="stylesheet" href="assets/css/animate.min.css">
		<link rel="stylesheet" href="assets/css/rateit.css">
		<link rel="stylesheet" href="assets/css/bootstrap-select.min.css">

		
		<link rel="stylesheet" href="assets/css/config.css">

		<link rel="stylesheet" href="assets/css/font-awesome.min.css">
		<link href='http://fonts.googleapis.com/css?family=Roboto:300,400,500,700' rel='stylesheet' type='text/css'>
		
		<!-- Favicon -->
		<link rel="shortcut icon" href="assets/images/favicon.ico">

	</head>
    <body class="cnt-home">
	
		
	
		<!-- ============================================== HEADER ============================================== -->
<header class="header-style-1">
<?php include('includes/top-header.php');?>
<?php include('includes/main-header.php');?>
<?php include('includes/menu-bar.php');?>
</header>


<section>
<div class="body-content outer-top-xs">
	<div class='container'>
		<div class='row outer-bottom-sm'>
			<div class='col-md-6 sidebar'>
			   <div class="sidebar-module-container">
	            	<img src="img/about.jpg" width="100%">
	            	</div>
            </div><!-- /.sidebar -->
			<div class='col-md-6'>

					<h2> ABOUT US </h2>
					 <p class="about-us" style="font-size: 16px;font-family:serif; "> Sri Lakshmi Super Market is an independent Asian grocery store located in the heart of Western Sydney, catering for thousands of households with their day-to-day grocery needs such as vegetables, fruits, frozen packed food and hot food. We also maintain a large warehouse to replenish our stock every day to minimise customer disruption. We provide the best customer service and experience for all walk-in customers and entice them to revisit with our facility to avail incredible offers changing every week.
Due to the high demand for groceries & hot food and bustling schedules of our customers, which limits their time to shop in store, we instigated the idea to extend our services further as an online portal and door delivery. With this new enhancement in the business process, we would like to customise our existing website to an interactive portal for the most beneficial Customer experience and User experience for both our existing and new customers.
</p>

	
						
				

				</div><!-- /.search-result-container -->

			</div><!-- /.col -->


		</section>


        <section style="text-align: center;">
            <H2> Shop Location </H2>
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3315.013783362547!2d150.96855221520875!3d-33.81195738067203!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6b12a2bc236d507b%3A0x4056c3dd75b58248!2sStation%20St%2C%20Wentworthville%20NSW%202145%2C%20Australia!5e0!3m2!1sen!2snp!4v1619931553635!5m2!1sen!2snp" width="1000" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>

        </section>
	
<?php include('includes/brands-slider.php');?>
</div>
</div>
<?php include('includes/footer.php');?>
	
	<script src="assets/js/jquery-1.11.1.min.js"></script>
	
	<script src="assets/js/bootstrap.min.js"></script>
	
	<script src="assets/js/bootstrap-hover-dropdown.min.js"></script>
	<script src="assets/js/owl.carousel.min.js"></script>
	
	<script src="assets/js/echo.min.js"></script>
	<script src="assets/js/jquery.easing-1.3.min.js"></script>
	<script src="assets/js/bootstrap-slider.min.js"></script>
    <script src="assets/js/jquery.rateit.min.js"></script>
    <script type="text/javascript" src="assets/js/lightbox.min.js"></script>
    <script src="assets/js/bootstrap-select.min.js"></script>
    <script src="assets/js/wow.min.js"></script>
	<script src="assets/js/scripts.js"></script>


	<script src="switchstylesheet/switchstylesheet.js"></script>
	

	

</body>
</html>