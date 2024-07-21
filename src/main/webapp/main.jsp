<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Main Page</title>
    <!-- Include Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f5f5f5;
            font-family: 'Arial', sans-serif;
        }

        .container {
            max-width: 950px;
            margin: 50px auto; /* Added margin to center the container and increase distance from the top */
            padding: 30px;
        }

        h1 {
            text-align: center;
            margin-bottom: 30px; /* Increased margin at the bottom of h1 for more space */
            color: #007bff;
            font-weight: bold; 
            
        }

        .card {
            margin-bottom: 30px; /* Increased margin between cards */
            border: 1px solid #ddd; /* Added a border to the cards */
            border-radius: 10px; /* Added border-radius for rounded corners */
            transition: transform 0.3s; /* Added transition effect */
        }

        .card:hover {
            transform: scale(1.05); /* Scale the card on hover */
        }

        .card img {
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
        }

        .card-body {
            padding: 20px;
        }

        .card-title {
            margin-bottom: 15px; /* Increased margin at the bottom of card title */
        }

        .card-text {
            color: #555;
        }

        .btn-primary {
            background-color: #007bff;
            border-color: #007bff;
        }

        .btn-primary:hover {
            background-color: #0056b3;
            border-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Welcome to Bank of Mumbai</h1>
        <div class="row">
            <div class="col-md-4">
                <div class="card">
                    <img src="deposit.jpg" class="card-img-top" alt="Deposit Image">
                    <div class="card-body">
                        <h5 class="card-title">Deposit Money</h5>
                        <p class="card-text">Deposit money into your account securely and conveniently.</p>
                        <a href="deposit.jsp" class="btn btn-primary">Deposit Now</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <img src="withdraw-image.png" class="card-img-top" alt="Withdraw Image">
                    <div class="card-body">
                        <h5 class="card-title">Withdraw Money</h5>
                        <p class="card-text">Withdraw money from your account whenever you need it.</p>
                        <a href="withdraw.jsp" class="btn btn-primary">Withdraw Now</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <img src="balance-image.png" class="card-img-top" alt="Balance Image">
                    <div class="card-body">
                        <h5 class="card-title">Manage customer</h5>
                        <p class="card-text">Customer can Add, Update and Manage their details</p>
                        <a href="customer.jsp" class="btn btn-primary">Customer Manage</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Include Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
