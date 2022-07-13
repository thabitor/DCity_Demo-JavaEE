<%@ page import="bxl.thabitor.demoee.service.ProductService" %>
<%@ page import="bxl.thabitor.demoee.models.Product" %><%--
  Created by IntelliJ IDEA.
  User: JAVA
  Date: 12/07/2022
  Time: 15:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%-- créer des variables et/ou methodes dans la classe de la Servlet générée --%>
<%! private final ProductService service = ProductService.getInstance(); %>

<%-- dans les <% ... %> seront décrites les différentes instructions de la méthode service de la Servlet générée --%>
<%
  String id = request.getParameter("id");
  if(id == null){
    response.setStatus(400);
    return;
  }
  System.out.println("dans la méthode service");
  Product p = service.getOne(Integer.parseInt(id));
%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <title>Title</title>
</head>
<body>
<h1>Details d'un produit</h1>

<div>
  <p><span>id: </span> <%= p.getId() %></p>
  <p><span>Name: </span> <%= p.getName() %> </p>
  <p><span>Marque: </span> <%= p.getBrand() %> </p>
  <p><span>Category: </span> <%= p.getCategory() %> </p>
  <p><span>Price: </span> <%= p.getPrice() %> $ </p>
</div>
<a href="../product/update?id=<%= p.getId() %>">Update product</a>
<a href="../product">Back to All products</a>
</body>
</html>
