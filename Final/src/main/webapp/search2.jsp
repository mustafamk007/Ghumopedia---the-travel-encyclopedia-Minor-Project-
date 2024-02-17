<%@page import="com.final_Project.DTO.AddPlace"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="styleSearch.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
  
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>

<body>

  <header>

    <div id="menu-bar" class="fas fa-bars"></div>
    <a href="index.html" class="logo"><span>G</span>HUMOPEDIA</a>
    <nav class="navbar">
      <a href="#home">home</a>
      <a href="#packages">destinations</a>
      <a href="#services">services</a>
      <a href="#gallery">gallery</a>
      <a href="#contact">contact</a>
    </nav>

    <div class="icons">
      <i class="fas fa-search" id="search-btn"></i>
      <a href="userLogin.jsp"><i class="fas fa-user" id="login-btn"></i></a> <!-- login logo -->
    </div>

    <form action="" class="search-bar-container">
      <input type="search" id="search-bar" placeholder="search here...">
      <label for="search-bar" class="fas fa-search"></label>
    </form>
  </header>
  <%
  //Passenger pp = request.getAttribute("PASSENGER");
  AddPlace ad = (AddPlace) request.getAttribute("ADDPLACE");
  
  %>
  <section>
    <div class="row">
    <div class="col-md-6">
        <div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
          <div class="carousel-inner">
            <div class="carousel-item active">
              <img src="images2/<%=ad.getImage1() %>" alt="...">
            </div>
            <div class="carousel-item">
              <img src="images2/<%=ad.getImage2() %>" alt="...">
            </div>
            <div class="carousel-item">
              <img src="images2/<%=ad.getImage3() %>" alt="...">
            </div>
          </div>
      </div>
    </div>

    <div class="col-md-6">
      <div class="content">
        <h2><%=ad.getPlaceLocation() %></h2>
        <p><%=ad.getPlaceDescription() %></p>
      </div>
    </div>
  </div>
  </section>

  <div class="special">
    <h2>WHAT IS <%=ad.getPlaceName() %> FAMOUS FOR?</h2>
    <ul type="none">
    <li><p><i class="uil uil-navigator"></i><%=ad.getPlaceFamous1() %></p></li>
    
    <li><p><i class="uil uil-navigator"></i><%=ad.getPlaceFamous2() %></p></li>
    
    <li><p><i class="uil uil-navigator"></i><%=ad.getPlaceFamous3() %></p></li>
    
    <li><p><i class="uil uil-navigator"></i><%=ad.getPlaceFamous4() %></p></li> 
    
    <li><p><i class="uil uil-navigator"></i><%=ad.getPlaceFamous5() %></p></li>

  </ul>
  </div>

  <div class="search">
    <button type="button" class="btn btn"><a href="accomodation.html">search for accomodation</a> </button>
    <button type="button" class="btn btn"><a href="homestay.html">Search for homestays</a></button>
  </div>


    <h1 class="views">reviews</h1>
    <div class="box-container">
       <div class="box-r">
          <div class="box-top">
            <div class="profile">
              <div class="profile-img">
                <img src="images/1.jpg">
              </div>
              <div class="name-user">
                <strong>priti</strong>
                <span>@pritinazare</span>
              </div>
            </div>
               
              <div class="reviews">
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="far fa-star"></i>
                  <i class="far fa-star"></i>
                </div>

            </div>

        <p style="color: black; font-size: 16px;">Maheshwar had  very clean ghats Maheshwar was a mere stop to bathe in the clean well maintained ghats. The local Pawar handloom gives you a good price for pure Maheshwaris. Its worth your while to shop there. The prices were 40% lower than Mumbai....</p>
    
          </div>

        <div class="box-r">
           <div class="box-top">
             <div class="profile">
               <div class="profile-img">
                 <img src="images/2.jpg">
               </div>
               <div class="name-user">
                 <strong>Arjun singh</strong>
                 <span>@arjunsingh2030</span>
               </div>
             </div>
                
               <div class="reviews">
                   <i class="fas fa-star"></i>
                   <i class="fas fa-star"></i>
                   <i class="fas fa-star"></i>
                   <i class="far fa-star"></i>
                   <i class="far fa-star"></i>
                 </div>
 
             </div>
 
         <p style="color: black; font-size: 16px;"> Excellent hospitality. Very natural atmosphere... Bamboo hut is organic, clean. Food is very authentic
         and the entire Maheswar Land campus is full of greenery. There is a big pond and a janghal in the back side
         where you can retreat your mind under the fresh sky..</p>
           </div>
 

          <div class="box-r">
             <div class="box-top">
               <div class="profile">
                 <div class="profile-img">
                   <img src="images/3.jpg">
                 </div>
                 <div class="name-user">
                   <strong>Prasad Balladkar</strong>
                   <span>@prasadballadkar179</span>
                 </div>
               </div>
                  
                 <div class="reviews">
                     <i class="fas fa-star"></i>
                     <i class="fas fa-star"></i>
                     <i class="fas fa-star"></i>
                     <i class="far fa-star"></i>
                     <i class="far fa-star"></i>
                   </div>
   
               </div>
   
           <p style="color: black; font-size: 16px;"> These are many more temples in the palace such as a temple of ahilyabai holkar situated in this palace and a temple of lord shiva in palace because, queen ahilyabai holkar was a great devotee of lord shiva, so that the built lord shiva temples on indore and many other ciities, here you will see the narmada river and just keep watching it.......</p>
       
             </div>

             <div class="box-r">
              <div class="box-top">
                <div class="profile">
                  <div class="profile-img">
                    <img src="images/female.jpeg">
                  </div>
                  <div class="name-user">
                    <strong>Masarrat</strong>
                    <span> @masarratmouth</span>
                  </div>
                </div>
                   
                  <div class="reviews">
                      <i class="fas fa-star"></i>
                      <i class="fas fa-star"></i>
                      <i class="fas fa-star"></i>
                      <i class="far fa-star"></i>
                      <i class="far fa-star"></i>
                    </div>
    
                </div>
    
            <p style="color: black; font-size: 16px;"> Maheshwar fort is very beautyfull place to visit but. There is no maintanance And no security system is there
              Boats are running in lack but there is no safty measures for passengers. So there is chance to drop in water may lose of life
              And in fort also there are lost of garbage thrown by viewrs which lighten its beauty</p>
        
              </div>
   
          </div>

          
          <section class="footer">

            <div class="box-container">
        
                <div class="box">
                    <h3>About us</h3>
                    <p>Ghumopedia is a website where you get all the information about various tourist and picnic spots that you have never come accross.
                        Enjoy surfing new places whose charisma will definately leave you with a plan. </p>
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
                    <a href="#packages">destinations</a>
                    <a href="#services">services</a>
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

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
      crossorigin="anonymous"></script>
</body>

</html>