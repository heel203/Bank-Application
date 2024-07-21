<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Customer Information Management</title>
    <script>
        function setAction(action) {
            document.getElementById("customerForm").action = "Customer?action=" + action;
            document.getElementById("customerForm").submit();
        }
    </script>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }
        #root {
            text-align: center;
            padding: 20px;
            background-color: #007bff;
            color: #ffffff;
        }
        
        form {
            background-color: #ffffff;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            padding: 20px;
            width: 500px;
            margin: 0 auto;
        }
        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }
        input[type="text"],
        input[type="email"],
        input[type="password"],
        input[type="checkbox"] {
            width: calc(100% - 22px);
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 3px;
            box-sizing: border-box;
            font-size: 16px;
        }
        input[type="button"] {
    background-color: #007bff;
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 3px;
    cursor: pointer;
    font-size: 16px;
}

input[type="button"]:hover {
    background-color: #0056b3;
}
        .error-message {
            color: #ff0000;
            margin-top: 10px;
            font-size: 14px;
        }
        h1{
        text-align: center;
        }
    </style>
</head>
<body>
    <h1>Customer Information Management</h1>
    <form id="customerForm" method="post">
        <!-- Input fields for customer information -->
        <label>Name:</label>
        <input type="text" name="name" required><br>
        
        <label>Account Number:</label>
        <input type="text" name="accNo" required><br>
        
        <label>Date of Birth (YYYY-MM-DD):</label>
        <input type="text" name="dob" required><br>
        
        <label>Gender:</label>
        <input type="text" name="gender" required><br>
        
        <label>Address:</label>
        <input type="text" name="address" required><br>
        
        <label>Email:</label>
        <input type="email" name="email" required><br>
        
        <label>Phone Number:</label>
        <input type="text" name="phone" required><br>
        
        <label>Balance:</label>
        <input type="text" name="balance" required><br>
        
        <!-- Action buttons -->
        <input type="button" value="Add Customer" onclick="setAction('add')">
        <input type="button" value="Update Customer" onclick="setAction('update')">
        <input type="button" value="Delete Customer" onclick="setAction('delete')">
    </form>
</body>
</html>
