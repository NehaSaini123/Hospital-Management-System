
<%@page import="java.sql.Connection"%>



<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index Page</title>
<%@include file="allcss.jsp"%>
<style type="text/css">
.main {
	overflow-x: hidden;
	width: 100vw;
}

.image {
	position: relative;
	width: 30vw;
	height: 550px;
	display: grid;
	grid-template-columns: 300px;
	grid-template-row: 500px;
	margin-right: 0px;
	float: left;
	overflow-x: hidden;
}

img {
	display: block;
	margin-left: auto;
	margin-right: auto;
	height: 510px;
}

.grid {
	width: 98vw;
	height: 630px;
	display: flex;
	justify-content: center;
	align-items: center;
	overflow-y: hidden;
}

.gridframe {
	overflow-y: hidden;
	overflow-x: hidden;
}

.container {
	float: left;
	background: #eee;
	width: 50vw;
	padding-left: 35px;
	padding-top: 20px;
	padding-bottom: 20px;
	height: 550px;
	display: grid;
	grid-template-columns: 300px 300px;
	grid-template-row: 150px 150px;
	grid-gap: 20px;
	display: grid;
	align-content: space-around;
	justify-content: space-around;
	position: relative;
	background: rgba(25, 135, 84, 0.8);
	background-image: url(img/user.png);
	background-repeat: no-repeat;
	overflow: hidden;
	background-size: cover;
	margin-right: 0px;
	overflow-x: hidden;
	overflow-y: hidden;
}

.item3 {
	align-self: start;
	padding-bottom: 35px;
}

.item4 {
	align-self: start;
	padding-bottom: 35px;
}

.card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}

.container2 {
	margin: 15px;
}

/* Custom styles for cards */
.cardn {
	max-width: 500px;
	margin: 0 auto; /* Center the cards horizontally */
}

.cardn {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>

</head>

<body>
	<%@include file="navbar.jsp"%>

	<div id="carouselExampleIndicators" class="carousel slide" class="main"
		data-bs-ride="carousel">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="0" class="active" aria-current="true"
				aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="2" aria-label="Slide 3"></button>
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="img/hos.png" class="d-block w-100" alt="..."
					height="550px" style="background-size: cover;">
			</div>
			<div class="carousel-item">
				<img src="img/hos2.png" class="d-block w-100" alt="..."
					height="550px" style="background-size: cover;">
			</div>
			<div class="carousel-item">
				<img src="img/hos3.png" class="d-block w-100" alt="..."
					height="550px" style="background-size: cover;">
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>


	<!-- 333333333  w-25 -->

	<div class="containerh p-3" class="head">
		<p class="text-center fs-2">Key Features of our Hospital</p>
	</div>



	<div class="grid">
		<div class="gridframe">
			<div class="container">

				<div class="card " class="item1">
					<div class="card-body">
						<h5 class="card-title">100% Sefety</h5>
						<p class="card-text">With supporting text below as a natural
							lead-in to additional content.</p>

					</div>
				</div>

				<div class="card " class="item2">
					<div class="card-body">
						<h5 class="card-title">Clean Environment</h5>
						<p class="card-text">With supporting text below as a natural
							lead-in to additional content.</p>

					</div>
				</div>


				<div class="card " class="item3">
					<div class="card-body">
						<h5 class="card-title">Friendly Doctor</h5>
						<p class="card-text">With supporting text below as a natural
							lead-in to additional content.</p>

					</div>
				</div>

				<div class="card " class="item4">
					<div class="card-body">
						<h5 class="card-title">Medical Research</h5>
						<p class="card-text">With supporting text below as a natural
							lead-in to additional content.</p>

					</div>
				</div>
			</div>


			<div class="image">
				<div class="card-body">
					<img src="img/doctor.png" width="800px" height="" alt="...">
				</div>
			</div>
		</div>
	</div>

	<hr>

	<!--  	-->

	<div class="container2">
		<div class="heahing" style="text-align: center; margin-bottom: 20px;">
			<h3>Our Team</h3>
		</div>
		<div class="con">
			<div class="row">
				<div class="col-md-3">
					<div class="cardn">
						<img src="img/doc.png" class="card-img-top" alt="Card 1 Image"
							height="480px">
						<div class="card-body">
							<h5 class="card-title">Dr. Renu</h5>
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<div class="cardn">
						<img src="img/doc2.png" class="card-img-top" alt="Card 2 Image"
							height="480px">
						<div class="card-body">
							<h5 class="card-title">DR. Siva Kumar</h5>
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<div class="cardn">
						<img src="img/doc3.png" class="card-img-top" alt="Card 3 Image"
							height="480px">
						<div class="card-body">
							<h5 class="card-title">Dr. Jan Sujith</h5>
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<div class="cardn">
						<img src="img/doc4.png" class="card-img-top" alt="Card 4 Image"
							height="480px">
						<div class="card-body">
							<h5 class="card-title">Dr. Suman</h5>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<hr>

	<%@include file="footer.jsp"%>
</body>
</html>