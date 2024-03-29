<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>User Logout</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<style>
body {
	color: #999;
		background: #fcf4de;
	font-family: 'Varela Round', sans-serif;
}
</style>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="/spring-mvc-boot/">Fresh Veggie's</a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="/spring-mvc-boot/">Home</a></li>
      
    </ul>
     </div>
</nav>

<h3>Hello ${requestScope.details.name} </h3>
<h3>You have logged out successfully....</h3>
<h3>Goto <a href="/spring-mvc-boot/"> Home </a></h3>
</body>
</html>