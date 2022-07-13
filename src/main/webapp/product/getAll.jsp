<%@ page import="bxl.thabitor.demoee.service.ProductService" %>
<%@ page import="bxl.thabitor.demoee.models.Product" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: JAVA
  Date: 12/07/2022
  Time: 15:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%! private final ProductService service = ProductService.getInstance(); %>

<%-- dans les <% ... %> seront décrites les différentes instructions de la méthode service de la Servlet générée --%>
<%

    System.out.println("dans la méthode service");
    List<Product> pList = service.getAll();
%>


<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Product list:</h1>
<ul>
    <% for (Product p : pList ) { %>
    <li>
        <div>
            <a href="../product?id=<%= p.getId() %>"><span>id: </span> <%= p.getId() %></a>
            <p><span>Name: </span> <%= p.getName() %> </p>
            <p><span>Marque: </span> <%= p.getBrand() %> </p>
            <p><span>Category: </span> <%= p.getCategory() %> </p>
            <p><span>Price: </span> <%= p.getPrice() %> $ </p>
        </div>
    </li>
    <% } %>
</ul>

</body>
</html>
