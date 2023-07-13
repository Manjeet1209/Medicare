<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cart</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<!-- Custom CSS -->
<style>
/* Adjust styling as needed */
.navbar {
	background-color: #007bff; /* Set the header background color */
}

.login-form {
	max-width: 400px;
	margin: 0 auto;
}

.product-card {
	width: 200px;
	margin: 10px;
	padding: 10px;
	border: 1px solid #ccc;
	text-align: center;
}

.product-card img {
	max-width: 150px;
	max-height: 150px;
	margin-bottom: 10px;
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
	<!-- Header -->
	<nav class="navbar navbar-expand-lg navbar-light">
		<a class="navbar-brand" style="color: white">Medicare</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNav" aria-controls="navbarNav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item"><a class="nav-link" style="color: white"
					href="/temp">Home</a></li>
			</ul>
		</div>
	</nav>

	<!-- Cart Items -->
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h2>Cart</h2>
				<%-- Example cart items, you can replace this with your own data --%>

				<form action="/adding1" method="post">
					<table class="table">
						<thead>
							<tr>
								<th scope="col">Serial no.</th>
								<th scope="col">Medicine Name</th>
								<th scope="col">Manufacturer</th>
								<th scope="col">MRP</th>
							</tr>
						</thead>
						<tbody>

							<tr>

								<th scope="row"><input name="id" type="text"value="${product.id}"></th>
								<td><input name="name" type="text" value="${product.name}"></td>
								<td><input name="manufacture" type="text" value="${product.manufacture}"></td>
								<td><input name="price" type="text" value="${product.price}"></td>
							</tr>



						</tbody>
					</table>
				</form>

			</div>
		</div>
	</div>

	<!-- Proceed to Buy -->
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-12">
				<a href="/buy" class="btn btn-primary">Proceed to Buy</a>
			</div>
		</div>
	</div>

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
	<!-- Custom JS -->
	<script>
		$(document).ready(function() {
			// Delete product from cart
			$('.delete-product').click(function() {
				var productId = $(this).data('product-id');
				// Perform delete operation here (e.g., AJAX request to the server)

				// Remove the product card from the DOM
				$(this).closest('.product-card').remove();
			});
		});
	</script>
</body>
</html>