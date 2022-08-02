<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp" %>
</head>
<body>
	<div class="container mt-3">
		<form action="${pageContext.request.contextPath }/handleform" method="post">
		<h3>UUpdate product</h3>
		
			<input type="hidden" name="id" value="${product.id }" />
			  <div class="form-group">
			    <label for="name">Product Name</label>
			    <input type="text" class="form-control" id="name" name="name" aria-describedby="emailHelp" placeholder="Enter product name"
			    value="${product.name}"
			    >
			  </div>
			  <div class="form-group">
			    <label for="description">Product Description</label>
			    <input type="text" class="form-control" id="description" name="description" placeholder="Password"
			    value="${product.description}"
			    >
			  </div>
			  <div class="form-group">
			    <label for="price">Price</label>
			    <input type="text" class="form-control" id="price" name="price" placeholder="Product price"
			    value="${product.price}"
			    >
			  </div>
			  
			<div class="container text-center">
				<a href="${pageContext.request.contextPath }/" class="btn btn-primary" >Back</a>
				<button type="submit" class="btn btn-success">Update</button>
			</div>
			  
		</form>

	</div>
</body>
</html>