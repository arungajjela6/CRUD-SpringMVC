<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Products</title>
</head>
<body>
<h3 align="center">Add Products</h3>

<form action="/app/addproducts">
<table border="2" align="center">
         <tr><td>Name</td><td><input type="text" placeholder="Product Name" name="name"></td></tr>
		 <tr><td>Description</td><td><input type="text" placeholder="Product Description" name="dept"></td></tr>
		 <tr><td>Price</td><td><input type="text" placeholder="Product Price" name="price"></td></tr>
		 <tr><td></td><td><a href="<c:url value='/addproducts' />"><input type="submit" value="Add Product"></a></td></tr>

</form>		 
</body>
</html>