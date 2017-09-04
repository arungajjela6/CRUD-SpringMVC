<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="/app/update/${id}">
<table border="2" align="center">
         <tr><td>Name</td><td><input type="text" placeholder="Product Name" name="name"></td></tr>
		 <tr><td>Description</td><td><input type="text" placeholder="Product Description" name="dept"></td></tr>
		 <tr><td>Price</td><td><input type="text" placeholder="Product Price" name="price"></td></tr>
		 <tr><td></td><td><a href="<c:url value='/add' />"><input type="submit" value="Edit Product"></a></td></tr>
</table>
</form>	
</body>
</html>