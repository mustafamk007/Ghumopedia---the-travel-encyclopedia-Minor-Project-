
<%@page import="com.final_Project.DTO.AddPlace"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Ghumopedia</title>

<link rel="stylesheet"
	href="https://unpkg.com/swiper/swiper-bundle.min.css" />

<!-- font awesome cdn link  -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- custom css file link -->
<link rel="stylesheet" href="style.css">
</head>

<body>

	<%
	String u = (String) request.getAttribute("uu");
	%>
	<!-- header section starts  -->

	<header>

		<div id="menu-bar" class="fas fa-bars"></div>

		<a href="#" class="logo"><span>G</span>HUMOPEDIA</a>

		<nav class="navbar">
			<a href="#home">home</a> <a href="#packages">destinations</a> <a
				href="#services">services</a> <a href="#gallery">gallery</a> <a
				href="#contact">contact</a>
		</nav>


		<div class="icons">
			<i class="fas fa-search" id="search-btn"></i> <a href="userLogin.jsp">
				<%
				if (u != null) {
				%> <%=u%> <%
 }
 %> <i class="fas fa-user" id="login-btn"></i>
			</a>
			<!-- login logo -->
		</div>



		<form action="SearchCtrl" class="search-bar-container">
			<input type="search" id="search-bar" name="placeName"
				placeholder="search here..."> <label for="search-bar"
				class="fas fa-search"></label>
		</form>

	</header>

	<!--header section ends -->

	<!-- login form container  -->


	<!-- home section starts  -->

	<section class="home" id="home">

		<div class="content">
			<h3>adventure is worthwhile</h3>
			<p>dicover new places with us, adventure awaits</p>
			<a href="#gallery" class="btn">discover more</a>
		</div>

		<div class="controls">
			<span class="vid-btn active" data-src="images/vid-2.mp4"></span> <span
				class="vid-btn" data-src="images/vid-3.mp4"></span> <span
				class="vid-btn " data-src="images/vid-1.mp4"></span> <span
				class="vid-btn" data-src="images/vid-4.mp4"></span> <span
				class="vid-btn" data-src="images/vid-5.mp4"></span>
		</div>

		<div class="video-container">
			<video src="images/vid-2.mp4" id="video-slider" loop autoplay muted></video>
		</div>

	</section>



	<!-- home section ends -->

	<!-- destination section starts  -->



	<%
	ArrayList<AddPlace> list = (ArrayList<AddPlace>) request.getAttribute("LIST");
	%>


	<section class="destination" id="packages">
		<h1 class="heading">
			<span>D</span> <span>E</span> <span>S</span> <span>T</span> <span>I</span>
			<span>N</span> <span>A</span> <span>T</span> <span>I</span> <span>O</span>
			<span>N</span>
		</h1>

		<div class="box-container">
			<%
			for (AddPlace a : list) {
			%>
			<div class="box">
				<img src="images2/<%=a.getImage1()%>" alt="">
				<div class="content">
					<h3>
						<i class="fas fa-map-marker-alt"></i>
						<%=a.getPlaceName()%>
					</h3>
					<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
						Veritatis, nam! khanbhai</p>
					<div class="stars">
						<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
							class="fas fa-star"></i> <i class="fas fa-star"></i> <i
							class="far fa-star"></i>
					</div>

					<a href="LinkCtrl?id=<%=a.getPlaceId()%>" class="btn">See More</a>
				</div>
			</div>
			<%
			}
			%>
		</div>

	</section>



	<!-- services section starts  -->

	<section class="services" id="services">

		<h1 class="heading">
			<span>s</span> <span>e</span> <span>r</span> <span>v</span> <span>i</span>
			<span>c</span> <span>e</span> <span>s</span>
		</h1>

		<div class="box-container">

			<div class="box">
				<i class="fas fa-hotel"></i>
				<h3>affordable hotels</h3>
				<p>Lorem ipsum dolor sit amet consectetur, adipisicing elit.
					Inventore commodi earum, quis voluptate exercitationem ut minima
					itaque iusto ipsum corrupti!</p>
			</div>
			<div class="box">
				<i class="fa fa-home"></i>

				<h3>affordable Homestays</h3>
				<p>Lorem ipsum dolor sit amet consectetur, adipisicing elit.
					Inventore commodi earum, quis voluptate exercitationem ut minima
					itaque iusto ipsum corrupti!</p>
			</div>

			<div class="box">
				<i class="fas fa-globe-asia"></i>
				<h3>around the Indore</h3>
				<p>Lorem ipsum dolor sit amet consectetur, adipisicing elit.
					Inventore commodi earum, quis voluptate exercitationem ut minima
					itaque iusto ipsum corrupti!</p>
			</div>

			<div class="box">
				<i class="fas fa-hiking"></i>
				<h3>adventures</h3>
				<p>Lorem ipsum dolor sit amet consectetur, adipisicing elit.
					Inventore commodi earum, quis voluptate exercitationem ut minima
					itaque iusto ipsum corrupti!</p>
			</div>

		</div>

	</section>

	<!-- services section ends -->

	<!-- gallery section starts  -->

	<section class="gallery" id="gallery">

		<h1 class="heading">
			<span>g</span> <span>a</span> <span>l</span> <span>l</span> <span>e</span>
			<span>r</span> <span>y</span>
		</h1>

		<div class="box-container">

			<div class="box">
				<img src="images/g-1.jpg" alt="">
				<div class="content">
					<h3>Narmada Ghat</h3>
					<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
						Ducimus, tenetur.</p>

				</div>
			</div>
			<div class="box">
				<img src="images/g-2.jpg" alt="">
				<div class="content">
					<h3>Tincha Falls</h3>
					<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
						Ducimus, tenetur.</p>

				</div>
			</div>
			<div class="box">
				<img src="images/g-3.jpg" alt="">
				<div class="content">
					<h3>Jahaz Mahal, Mandu</h3>
					<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
						Ducimus, tenetur.</p>

				</div>
			</div>
			<div class="box">
				<img src="images/g-4.jpg" alt="">
				<div class="content">
					<h3>Mahakaleshwar Temple</h3>
					<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
						Ducimus, tenetur.</p>

				</div>
			</div>
			<div class="box">
				<img src="images/g-5.jpg" alt="">
				<div class="content">
					<h3>Hoshang Shah Tomb</h3>
					<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
						Ducimus, tenetur.</p>

				</div>
			</div>
			<div class="box">
				<img src="images/g-6.jpg" alt="">
				<div class="content">
					<h3>Bahadur Mahal, Mandu</h3>
					<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
						Ducimus, tenetur.</p>

				</div>
			</div>
			<div class="box">
				<img src="images/g-7.jpg" alt="">
				<div class="content">
					<h3>Lotus Gulawat Valley</h3>
					<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
						Ducimus, tenetur.</p>

				</div>
			</div>
			<div class="box">
				<img src="images/g-8.jpg" alt="">
				<div class="content">
					<h3>Chidiya Bhadak Waterfall</h3>
					<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
						Ducimus, tenetur.</p>

				</div>
			</div>


		</div>

	</section>

	<!-- gallery section ends -->

	<!-- review section starts  -->


	<!-- contact section starts  -->

	<section class="contact" id="contact">

		<h1 class="heading">
			<span>c</span> <span>o</span> <span>n</span> <span>t</span> <span>a</span>
			<span>c</span> <span>t</span>
		</h1>

		<div class="row">



			<div class="image">
				<img src="images/contact-img.svg" alt="">
			</div>

			<form action="ContactUsCtrl" method="post">
				<div class="inputBox">
					<input type="text" placeholder="name" name="name"> <input
						type="email" name="email" placeholder="email">
				</div>
				<div class="inputBox">
					<input type="number" placeholder="number" name="phoneNumber">
					<input type="text" placeholder="subject" name="subject1">
				</div>
				<textarea placeholder="message" name="message" id="" cols="30"
					rows="10"></textarea>
				<input type="submit" class="btn" value="send message">
			</form>

		</div>

	</section>

	<!-- contact section ends -->


	<!-- footer section  -->

	<section class="footer">

		<div class="box-container">

			<div class="box">
				<h3>About us</h3>
				<p>Ghumopedia is a website where you get all the information
					about various tourist and picnic spots that you have never come
					accross. Enjoy surfing new places whose charisma will definately
					leave you with a plan.</p>
			</div>
			<!-- <div class="box">
                <h3>branch locations</h3>
                <a href="#">india</a>
                <a href="#">USA</a>
                <a href="#">japan</a>
                <a href="#">france</a>
            </div> -->

			<div class="box">
				<div class="links">
					<h3>quick links</h3>
					<a href="#">home</a>
					<!-- <a href="#">book</a> -->
					<a href="#packages">destinations</a> <a href="#services">services</a>
					<a href="#gallery">gallery</a>
					<!-- <a href="#">review</a> -->
					<a href="#contact">contact</a>
				</div>
			</div>


			<div class="box">
				<div class="follow">
					<h3>follow us</h3>
					<a href="#"><i class="fa fa-facebook-square" aria-hidden="true"></i>facebook</a>
					<a href="#"><i class="fa fa-instagram" aria-hidden="true"></i>instagram</a>
					<a href="#"><i class="fa fa-twitter" aria-hidden="true"></i>twitter</a>
					<a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i>linkedin</a>
					<a href="#"><i class="fa fa-whatsapp" aria-hidden="true"></i>Whatsapp</a>
				</div>

			</div>
	</section>
















	<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

	<!-- custom js file link  -->
	<script src="script.js"></script>
</body>

</html>