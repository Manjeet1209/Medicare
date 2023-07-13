<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Search</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <!-- Custom CSS -->
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
        .navbar {
            background-color: #007bff; /* Set the navbar background color */
            color: white; /* Set the navbar text color */
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
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" style="color: white" href="/">Home</a>
                </li>
            </ul>
        </div>
    </nav>

    <!-- Search Form -->
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2>Search</h2>
                <form>
                    <div class="form-row">
                        <div class="form-group col-md-4">
                            <label for="inputKeyword">search for medicine</label>
                            <input type="text" class="form-control" id="inputKeyword" placeholder="Enter keyword">
                        </div>
                        <div class="form-group col-md-4">
                            <label for="selectSort">Sort By Price</label>
                            <select class="form-control" id="selectSort">
                                <option value="asc">Low to High</option>
                                <option value="desc">High to Low</option>
                            </select>
                        </div>
                        <div class="form-group col-md-4">
                            <label for="selectSymptoms">Filter By Symptoms</label>
                            <select class="form-control" id="selectSymptoms">
                                <option value="">All</option>
                                <option value="fever">Fever</option>
                                <option value="headache">Headache</option>
                                <option value="cough">Cough</option>
                            </select>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-primary">Search</button>
                </form>
            </div>
        </div>
    </div>

    <!-- Medicine Listings -->
    <div class="container mt-3">
        <div class="row">
            <div class="col-md-12">
                <h2>Search Results</h2>
                <div class="row">
                    <%-- Example medicine cards, you can replace this with your own data --%>
                    <div class="col-md-4">
                        <div class="medicine-card">
                            <img src="medicine1.jpg" alt="Medicine 1">
                            <h4>Medicine 1</h4>
                            <p>Description of Medicine 1.</p>
                            <p>Price: $10</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="medicine-card">
                            <img src="medicine2.jpg" alt="Medicine 2">
                            <h4>Medicine 2</h4>
                            <p>Description of Medicine 2.</p>
                            <p>Price: $15</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="medicine-card">
                            <img src="medicine3.jpg" alt="Medicine 3">
                            <h4>Medicine 3</h4>
                            <p>Description of Medicine 3.</p>
                            <p>Price: $20</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <div class="footer">
        <p>&copy; 2012-2023 Medicare. All rights reserved.</p>
    </div>

    <!-- Bootstrap JS (jQuery and Popper.js required) -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>