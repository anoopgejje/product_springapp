<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@include file="./base.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body class="p-3 mb-2 bg-secondary text-white">

<div class="container mt-3">
<h2 class="container text-center">Product List</h2>
<table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">SR.NO</th>
      <th scope="col">Item</th>
      <th scope="col">Description</th>
      <th scope="col">Price</th>
       <th scope="col">Controls</th>
    </tr>
  </thead>
  
  <c:forEach items="${product }" var="p">
		  	<tbody>
		  		<tr>
		  			<th scope="row">TECHONLY${p.id}</th>
		  			<td>${p.name}</td>
		  			<td>${p.description}</td>
		  			<td>&#x20B9 ${p.price}</td>
		  			<td>
		  				<a href="delete/${p.id}"><i class="fas fa-trash-alt"></i></a>
		  				<a href="update/${p.id}"><i class="fas fa-pen-nib text-warning"></i></a>
		  			</td>
		  		</tr>
		  	</tbody>
  </c:forEach>
  
</table>
<div class="container text-center">
	<a href="addproduct" class="btn btn-outline-warning">Add product</a>
</div>	
	
</div>
</body>
</html>


