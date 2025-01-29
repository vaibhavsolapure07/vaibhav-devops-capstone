<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Registration</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background: white;
            width: 400px;
            padding: 20px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
            border-radius: 10px;
        }

        h1 {
            color: #333;
            margin-bottom: 10px;
        }

        p {
            color: #666;
            font-size: 14px;
        }

        input {
            width: 90%;
            padding: 10px;
            margin: 8px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }

        .registerbtn {
            width: 100%;
            padding: 12px;
            background: #28a745;
            border: none;
            color: white;
            font-size: 16px;
            cursor: pointer;
            border-radius: 5px;
            margin-top: 10px;
        }

        .registerbtn:hover {
            background: #218838;
        }

        .signin {
            margin-top: 20px;
            font-size: 14px;
        }

        .signin a {
            color: #007bff;
            text-decoration: none;
        }

        .signin a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<form action="RegisterServlet" method="post">
    <div class="container">
        <h1>Registration Form</h1>
        <p>Please fill in this form to create an account.</p>
        <hr>

        <label for="Name"><b>Enter Name</b></label>
        <input type="text" placeholder="Enter Full Name" name="Name" id="Name" required>

        <label for="mobile"><b>Enter Mobile</b></label>
        <input type="text" placeholder="Enter Mobile Number" name="mobile" id="mobile" pattern="[0-9]{10}" title="Enter a valid 10-digit mobile number" required>

        <label for="email"><b>Enter Email</b></label>
        <input type="email" placeholder="Enter Email" name="email" id="email" required>

        <label for="psw"><b>Password</b></label>
        <input type="password" placeholder="Enter Password" name="psw" id="psw" minlength="6" required>

        <label for="psw-repeat"><b>Repeat Password</b></label>
        <input type="password" placeholder="Repeat Password" name="psw-repeat" id="psw-repeat" required>
        <hr>

        <p>By creating an account, you agree to our <a href="#">Terms & Privacy</a>.</p>
        <button type="submit" class="registerbtn">Register</button>

        <div class="signin">
            <p>Already have an account? <a href="#">Sign in</a>.</p>
        </div>

        <h2>Thank You</h2>
        <h3>See you again!</h3>
    </div>
</form>

</body>
</html>
