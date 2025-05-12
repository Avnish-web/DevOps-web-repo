<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>MyStore - Online Shopping</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .navbar-brand { font-weight: bold; font-size: 24px; }
        .product-card { transition: box-shadow 0.3s; }
        .product-card:hover { box-shadow: 0 4px 8px rgba(0,0,0,0.2); }
        .footer { background-color: #f1f1f1; padding: 20px; text-align: center; margin-top: 40px; }
    </style>
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="#">MyStore</a>
    <form class="form-inline ml-auto">
        <input class="form-control mr-sm-2" type="search" placeholder="Search products">
        <button class="btn btn-outline-success" type="submit">Search</button>
    </form>
</nav>

<!-- Hero Banner -->
<div class="jumbotron text-center bg-info text-white">
    <h1>Welcome to MyStore</h1>
    <p>Your one-stop shop for everything!</p>
</div>

<!-- Product Section -->
<div class="container">
    <div class="row">
        <%-- Example product loop --%>
        <%
            String[] products = {"Laptop", "Smartphone", "Headphones", "Camera"};
            for (String product : products) {
        %>
        <div class="col-md-3">
            <div class="card product-card mb-4">
                <img class="card-img-top" src="images/<%= product.toLowerCase() %>.jpg" alt="<%= product %>">
                <div class="card-body">
                    <h5 class="card-title"><%= product %></h5>
                    <p class="card-text">High quality <%= product %> at a great price.</p>
                    <a href="#" class="btn btn-primary">Buy Now</a>
                </div>
            </div>
        </div>
        <% } %>
    </div>
</div>

<!-- Footer -->
<div class="footer">
    <p>&copy; 2025 MyStore. All rights reserved.</p>
</div>

</body>
</html>
