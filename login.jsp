<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login form</title>
<%@include file="allcss.jsp"%>
<style type="text/css">
body {
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	margin: 0;
	background-image: url(img/doctorlogin.png);
	background-repeat: no-repeat;
	overflow: hidden;
	background-size: cover;
}

nav {
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 60px;
	padding: 10px 90px;
	box-sizing: border-box;
	background: rgba(25, 135, 84, 0.8);
	border-bottom: 1px solid #198754;
}

nav .logo {
	padding: 3px 11px;
	height: 80px;
	float: left;
	font-size: 22px;
	text-transform: uppercase;
	color: #fff;
	cursor: pointer;
	text-decoration: none;
}

nav ul {
	list-style: none;
	float: right;
	margin: 0;
	padding: 0;
	display: flex;
}

nav ul li a {
	line-height: 80px;
	color: #fff;
	padding: 5px 22px;
	text-decoration: none;
	font-size: 18px;
	text-transform: uppercase;
	margin-top: -10px;
}

nav ul li {
	margin-top: -18px;
}

nav ul li a:hover {
	background: rgba(25, 135, 84, 0.2);;
	border-radius: 6px;
	color: #fff;
}

.login-container {
	height: 60vh;
	width: 70vw;
	border: 2px solid #ccc;
	border-radius: 25px;
	padding: 20px;
	max-width: 400px;
	text-align: center;
	background-color: rgba(0, 0, 0, 0.1);
	box-shadow: 0 0 3px #333;
}

.form {
	padding-top: 40px;
}

.login-container button {
	padding: 10px 20px;
	font-size: 19px;
	background-color: #06448D;
	color: #fff;
	border: none;
	cursor: pointer;
	width: 150px;
	border-radius: 5px;
}

.us {
	font-size: 23px;
	font-waight: bold;
}

.in {
	height: 30px;
	width: 200px;
	background-color: #F3F6FB;
}

.login-container button:hover {
	box-shadow: 2px 2px 5px #555;
	background-color: #06243C;
}

.login-container input:hover {
	box-shadow: 2px 2px 5px #555;
	background-color: #ddd;
}
</style>
</head>
<body>
	<div class="main">
		<nav>
			<a href="index.jsp" class="logo"><i
				class="fa-solid fa-house-medical" style="padding-right: 7px;"></i>MEDI
				HOME</a>
			<ul>
				<li><a href="admin_login.jsp"><i
						class="fa-solid fa-right-to-bracket" style="padding-right: 7px;"></i>ADMIN</a></li>
				<li><a href="doctor_login.jsp">DOCTOR</a></li>
				<li><a href="">APPOINTMENT</a></li>
				<li><a href="user_login.jsp">USER</a></li>


			</ul>
		</nav>
		<div class="login-container">
			<h2>Doctor Login</h2>
			<form action="#" method="post" class="form">
				<label for="username" class="us">Email address:</label> <input
					type="email" id="username" name="username"
					placeholder="email address" class="in" required /><br> <br>
				<br> <label for="password" class="us"
					style="padding-left: 34px;">Password:</label> <input
					type="password" id="password" name="password"
					placeholder="password" class="in" required /><br> <br> <br>
				<button type="submit">Login</button>
			</form>
		</div>
	</div>
</body>
</html>