<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1 align="center">
	Welcome 
</h1>
<h5 align="center"><a href="<c:url value='/add' />">Add Products</a></h5>
<h5 align ="center">Products List</h5>

 <table border="2" align="center">
         <tr>
           <th>Product ID</th>
           <th>Product Name</th>
           <th>Product Description</th>
           <th>Product Price</th>
           <th>Actions</th>
         </tr>
         <c:forEach items="${productlist}" var="product">
         <tr>
           <td width="60" align="center">${product.id}</td>
           <td width="60" align="center">${product.name}</td>
           <td width="60" align="center">${product.dept}</td>
           <td width="60" align="center">${product.price}</td>
           <td width="80" align="center"><a href="<c:url value='/delete/${product.id}' />">Delete</a>
           /<a href="<c:url value='/edit/${product.id}' />">Edit</a></td>
         </tr>
      </c:forEach>
 </table>     
      <hr/>
</body>
</html>
