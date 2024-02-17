<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<head>
<div class="message--error"></div>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="utf-8">
<title>Login Form</title>
<link rel="stylesheet" href="styleLogin.css">
<link rel="stylesheet"
	href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
</head>
<body>
	<div class="container">

		<%
		String m = (String) request.getAttribute("invalid_msg");
		if (m != null) {
			out.println("<h4 style='color:red;'>" + m + "</h4>");
		}
		%>
		<%
		String mm = (String) request.getAttribute("msg");
		if (mm != null) {
			out.println("<h4 style='color:green;'>" + mm + "</h4>");
		}
		%>
		<form class="form" id="login" action="login" method="post">
			<span class="title">Login</span>
			<div class="form__message form__message--error"></div>
			<div class="form__input-group">
				<input type="text" class="form__input" name="username" autofocus
					required placeholder="Username" id="Username"> <i
					class="uil uil-envelope icon"></i>
				<div class="form__input-error-message"></div>
			</div>
			<div class="form__input-group">
				<input type="password" class="form__input" name="password" autofocus
					required placeholder="Password"> <i
					class="uil uil-lock icon"></i>
				<div class="form__input-error-message"></div>
			</div>
			<button class="form__button" type="submit">Continue</button>
			<div class="form__text">
				<div class="checkbox-content">
					<input type="checkbox" id="logcheck"> <label for="logcheck"
						class="text">Remember me</label>
				</div>
				<a href="#" class="form__link">Forgot password?</a>
			</div>
			<p class="text">
				<span class="text">Don't have an account? <a
					class="form__link" href="userSignup.jsp" id="linkCreateAccount">Register</a>
				</span>
			</p>
		</form>
	</div>
</body>
</html>