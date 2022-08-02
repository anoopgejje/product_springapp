<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page isELIgnored="false" %>   
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>

<html>
	<head>
		<meta charset="ISO-8859-1">
		<%@include file="./base.jsp" %>
	</head>

<body class="p-3 mb-2 bg-secondary text-white">
	<div class="container mt-3">
		<form action="handleform" method="post">
		<h3>Add Details of new Product</h3>
			  <div class="form-group">
			    <label for="name">Product Name</label>
			    <input type="text" class="form-control" id="name" name="name" aria-describedby="emailHelp" placeholder="Enter product name">
			  </div>
			  <div class="form-group">
			    <label for="description">Product Description</label>
			    <input type="text" class="form-control" id="description" name="description" placeholder="Description">
			  </div>
			  <div class="form-group">
			    <label for="price">Price</label>
			    <input type="text" class="form-control" id="price" name="price" placeholder="Product price">
			  </div>
			  
			<div class="container text-center">
				<a href="${pageContext.request.contextPath }/" class="btn btn-primary" >Back</a>
				<button type="submit" class="btn btn-success">Add</button>
			</div>
			  
		</form>

	</div>
</body>
</html>