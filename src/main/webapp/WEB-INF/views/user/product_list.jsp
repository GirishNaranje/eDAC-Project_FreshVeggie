<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User product_list</title>

 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style>.carousel-inner > .item > img { width:100%; height:100%; } 
  nav.navbar.navbar-inverse {
    min-height: 50px;
}
  </style>

</head>
<body>

<nav class="navbar navbar-inverse ">
  <div class="container-fluid">
    
     <div class="navbar-header">
      <a class="navbar-brand" href="/spring-mvc-boot/">Fresh Veggie's</a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="/spring-mvc-boot/">Home</a></li>
      <li><a href="AboutUs">About Us</a></li>
      <li><a href="Contact">Contact Us</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="<spring:url value='/user/logout'/>">Log Out </a> </li>

     
    </ul>
  </div>
</nav>

<h5>${sessionScope.message}</h5>
	<table style="background-color: cyan; margin: auto;">
		<caption>Product List</caption>
		<tr>
			<th>Name</th>
			<th>Price</th>
			<th>Expiry Date</th>
			<th>Quantity</th>
			
		</tr>
		<c:forEach var="p" items="${requestScope.product_list}">
			<tr>
				<td>${p.name}</td>
				<td>${p.price}</td>
				<td>${p.xDate}</td>
				<td>${p.quntity}</td>
				
				<%-- <td><a href="<spring:url value='/user/update?uid=${u.id}'/>">Update</a></td> --%>
				<td><a href="<spring:url value='/product/addtocart?pid=${p.id}'/>">Add To Cart</a></td>
			</tr>
		</c:forEach>

	</table>
	
</body>
</html>