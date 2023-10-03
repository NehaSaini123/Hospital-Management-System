<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Signup page</title>
<%@include file="allcss.jsp"%>
<style>
body {
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	margin: 0;
	background-image: url(img/back.png);
	background-repeat: no-repeat;
	overflow: hidden;
	background-size: cover;
}

.main {
	height: 60vh;
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
	height: 70vh;
	width: 70vw;
	border: 2px solid #ccc;
	border-radius: 25px;
	padding: 20px;
	max-width: 400px;
	text-align: center;
	background-color: rgba(0, 0, 0, 0.1);
	box-shadow: 0 0 3px #333;
}

.header {
	text-align: center;
	padding-top: 30px;
}

.header h3 {
	color: #333;
	margin-bottom: 60px;
}

.main2 {
	text-align: center;
	padding-top: -30px;
}

.main2 input, button {
	width: 300px;
	height: 40px;
	border: none;
	outnine: none;
	padding-left: 40px;
	box-sizing: border-box;
	font-size: 15px;
	color: #333;
	margin-bottom: 25px;
}

.main2 span {
	position: relative;
}

.main i {
	position: absolute;
	left: 15px;
	color: #333;
	font-size: 16px;
	top: 3px;
}

.main button {
	padding-left: 0px;
	background-color: #83acf1;
	letter-spacing: 1px;
	font-weight: bold;
	border-radius: 10px;
	font-size: 19px;
}

.main button:hover {
	box-shadow: 2px 2px 5px #555;
	background-color: #06243C;
	color: green;
}

.main input:hover {
	box-shadow: 2px 2px 5px #555;
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
			<div class="header">
				<h3>User Register</h3>

				<c:if test="${not empty sucMsg }">
					<p class="text-center text-success fs-4">${sucMsg}</p>
					<c:remove var="sucMsg" />
				</c:if>

				<c:if test="${not empty errorMsg }">
					<p class="text-center text-danger fs-4">${errorMsg}</p>
					<c:remove var="errorMsg" />
				</c:if>

			</div>
			<div class="main2">
				<form action="user_register" method="post">
					<span> <i class="fa fa-user"></i> <input type="text"
						placeholder="fullname" name="fullname">
					</span><br> <span> <i class="fa fa-envelope"></i> <input
						type="email" placeholder="email address" name="email">
					</span><br> <span> <i class="fa fa-lock"></i> <input
						type="password" placeholder="password" name="password">
					</span><br>

					<button type="submit" onclick="return validateInput()">Register</button>
				</form>
			</div>




		</div>

	</div>
</body>
</html>