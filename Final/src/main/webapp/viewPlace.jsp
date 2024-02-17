<%@page import="com.final_Project.DTO.AddPlace"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html lang="en">

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>
        admin dashboard
    </title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
        integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href='https://fonts.googleapis.com/css?family=Poppins' rel='stylesheet'>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
        integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <style>
        * {
            font-family: 'Poppins';
        }
    </style>
    <link rel="stylesheet" href="admin.css">
</head>

<body>
    <section id="menu">
        <div class="logo">
            <img src="logo3.png" alt="">
            <p>HUMOPEDIA</p>
        </div>
        <div class="items">
            <li><i class="fa fa-user"></i><a href="L.html">Admin Login</a></li>
            <li><i class="fa fa-home"></i><a href="addhome.jsp">Add Homestays</a></li>
            <li><i class="fa fa-home"></i><a href="#">View Homestays</a></li>
            <li><i class="fa fa-hotel"></i><a href="addhotel.jsp">Add Hotels</a></li>
            <li><i class="fa fa-hotel"></i><a href="#">View Hotels</a></li>
            <li><i class="fa fa-location-dot"></i><a href="addplace.jsp">Add Places</a></li>
            <li><i class="fa fa-location-dot"></i><a href="viewPlace">View Places</a></li>
            <li><i class="fa fa-id-card"></i><a href="bookingdetails.jsp">Booking Details</a></li>
            <li><i class="fa fa-id-card"></i><a href="ContactCtrl">Enquiries</a></li>
        </div>
    </section>

<%
	ArrayList<AddPlace> list = (ArrayList<AddPlace>)request.getAttribute("LIST");

%>

    <section id="interface">
        <div class="navigation">
            <div class="n1">
                <div class="search">
                    <p>The Travel Encyclopedia !</p>
                </div>
            </div>
        </div>
        
        <h2 style="text-align: center;">All Places</h2> 
	<table border="2" class="table m-3">
		<thead class="thead-dark"> 
	<th>placeId</th>
	<th>placeName</th>
	<th>placeLocation</th>
	<th>placeDescription</th>
	<th>placeTimings</th>
	<th>placeFamous1</th>
    <th>placeFamous2</th>
    <th>placeFamous3</th>
    <th>placeFamous4</th>
    <th>placeFamous5</th>
	<th>image1</th>
	<th>image2</th>
    <th>image3</th>
	<th>Deletion</th>
	<th>Updation</th>
	</thead>
	<%
	for(AddPlace a : list){
	%>
	<tr>
	<td><%= a.getPlaceId()%></td>
	<td><%= a.getPlaceName()%></td>
	<td><%= a.getPlaceLocation()%></td>
	<td><%= a.getPlaceDescription()%></td>
	<td><%= a.getPlaceTimings()%></td>
	<td><%= a.getPlaceFamous1()%></td>
	<td><%= a.getPlaceFamous2()%></td>
    <td><%= a.getPlaceFamous3()%></td>
	<td><%= a.getPlaceFamous4()%></td>
	<td><%= a.getPlaceFamous5()%></td>
	<td><%= a.getImage1()%></td>
	<td><%= a.getImage2()%></td>
	<td><%= a.getImage3()%></td>
	<td><a href="#"class="btn btn-danger">Delete</a></td>
	<td><a href="#"class="btn btn-danger">Update</a></td>
	
	</tr>
	<%
	}
	%>
	</table>
        
    </section>
</body>

</html>