<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Payment</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<!-- Custom CSS -->
<style>
/* Adjust styling as needed */
.payment-form {
	max-width: 400px;
	margin: 0 auto;
}

.navbar {
	background-color: #007bff; /* Set your desired header color */
	color: white; /* Set the header text color */
	padding: 10px;
	text-align: center;
}

.footer {
	background-color: #000000; /* Set the footer background color */
	color: #ffffff; /* Set the footer text color */
	padding: 10px;
	text-align: center;
	position: fixed;
	bottom: 0;
	width: 100%;
}
</style>
</head>
<body>
	<!-- Navigation Bar -->
	<nav class="navbar navbar-expand-lg navbar-light">
		<a class="navbar-brand text-white">Medicare</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item"><a class="nav-link" style="color: white"
					href="/temp">Home</a></li>
			</ul>
		</div>
	</nav>

	<!-- Payment Status -->
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-12">
				<div class="alert alert-success">Payment successful!</div>
			</div>
		</div>
	</div>

	<h4 style="text-align:center">Thank you for your order.</h4>

	<!-- Footer -->
	<div class="footer">
		<p>&copy; 2012-2023 Medicare. All rights reserved.</p>
	</div>

	<!-- Bootstrap JS (jQuery and Popper.js required) -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>
