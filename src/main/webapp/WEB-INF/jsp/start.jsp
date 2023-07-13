<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
          crossorigin="anonymous">
    <style>
        /* Adjust styling as needed */
        .medicine-card {
            width: 200px;
            margin: 10px;
            padding: 10px;
            border: 1px solid #ccc;
            text-align: center;
        }

        .medicine-card img {
            max-width: 150px;
            max-height: 150px;
            margin-bottom: 10px;
        }

        /* Sticky footer */
        html,
        body {
            height: 100%;
        }

        .wrapper {
            min-height: 100%;
            display: flex;
            flex-direction: column;
        }

        .content {
            flex: 1;
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
    <title>Medicare</title>
</head>
<body>
<div class="wrapper">
    <!-- Header -->
    <nav class="navbar navbar-expand-lg navbar-light bg-primary">
        <a class="navbar-brand text-white">Medicare</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link text-white" href="login">Login</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" href="register">Register</a>
                </li>
            </ul>
        </div>
    </nav>
		<h5 align="center" >${lout} </h5>
    <!-- Content -->
    <div class="container mt-5 content">
        <div class="row">
            <div class="col-md-12">
                <center><h2>Welcome to Medicare</h2></center>
                <div class="row">
                    <%-- Example medicine cards, you can replace this with your own data --%>
                    <div class="medicine-card">
                        <img src="https://img.freepik.com/premium-vector/pills-liquids-medicine-children-kawaii-doodle-flat-vector-illustration_609998-86.jpg?w=2000" alt="Medicine Image">
                        <h5 class="medicine-name">Medicine 1</h5>
                        <p class="medicine-description">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    </div>
                    <div class="medicine-card">
                        <img src="https://media.istockphoto.com/id/1300036753/photo/falling-antibiotics-healthcare-background.jpg?s=612x612&w=0&k=20&c=oquxJiLqE33ePw2qML9UtKJgyYUqjkLFwxT84Pr-WPk=" alt="Medicine Image">
                        <h5 class="medicine-name">Medicine 2</h5>
                        <p class="medicine-description">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    </div>
                    <div class="medicine-card">
                        <img src="https://images.indianexpress.com/2017/07/medicines-l.jpg" alt="Medicine Image">
                        <h5 class="medicine-name">Medicine 3</h5>
                        <p class="medicine-description">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    </div>
                    <div class="medicine-card">
                        <img src="https://5.imimg.com/data5/SELLER/Default/2021/6/SF/ID/NM/16526614/allopathic-medicine-500x500.jpg" alt="Medicine Image">
                        <h5 class="medicine-name">Medicine 4</h5>
                        <p class="medicine-description">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    </div>
                    <div class="medicine-card">
                        <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/76/Medicine_Drugs.svg/2560px-Medicine_Drugs.svg.png" alt="Medicine Image">
                        <h5 class="medicine-name">Medicine 5</h5>
                        <p class="medicine-description">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer class="footer bg-dark text-white">
        <div class="container text-center">
            <p>&copy; 2012-2023 Medicare. All rights reserved.</p>
        </div>
    </footer>
</div>

<!-- Bootstrap JS (jQuery and Popper.js required) -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>
