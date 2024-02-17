<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<head>
    <div class="message--error"></div>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <title>Sign Up Form</title>
    <link rel="stylesheet" href="styleLogin.css">
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
</head>
<body>
    <!-- <div class="container">
     <form class="form form--hidden" id="createAccount">
    <h1 class="title">Register</h1> -->
    <div class="container">
        <form class="form" id="login" action="signup" method="post">
            <span class="title">Register</span>
    <div class="message--error"></div>
    <div class="form__input-group">
        <input type="text" id="signupUsername" class="form__input" name="username" autofocus required placeholder="Username" id="Username"><i class="uil uil-user"></i>
        <div class="form__input-error-message"></div>
    </div>
    <div class="form__input-group">
        <input type="text" id="signupUsername" class="form__input" name="name" autofocus required placeholder="Enter Your Name" id="name"><i class="uil uil-user"></i>
        <div class="form__input-error-message"></div>
    </div>
    <div class="form__input-group">
        <input type="text" id="signupUsername" class="form__input" name="phone" autofocus required placeholder="phone number" id="number"><i class="uil uil-phone"></i>
        <div class="form__input-error-message"></div>
    </div>
    <div class="form__input-group">
        <input type="email" class="form__input" autofocus name="email" required placeholder="Email Address"><i class="uil uil-envelope icon"></i>
        <div class="form__input-error-message"></div>
    </div>
    <div class="form__input-group">
        <input type="password" class="form__input" name="password" autofocus required placeholder="Password">
        <i class="uil uil-lock icon"></i>
        <div class="form__input-error-message"></div>
    </div>
    
    <button class="form__button" type="submit">Continue</button>
    <p class="text">Already have an account? 
        <a class="form__link" href="userLogin.jsp" id="linkLogin">Sign in</a>
    </p>
  </form>
 </div>
 </body>
</html>