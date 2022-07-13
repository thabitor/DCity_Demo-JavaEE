<%@ page import="bxl.thabitor.demoee.models.Product" %><%--
  Created by IntelliJ IDEA.
  User: JAVA
  Date: 13/07/2022
  Time: 14:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Update un produit</h1>

<%
    Product prodToUpdate = (Product) request.getAttribute("product");
%>

<form action="<%=request.getContextPath()%>/product/update" method="post">
    <input type="hidden" name="id" value="<%= prodToUpdate.getId() %>" >
    <div>
        <label for="in-name">Name</label><br>
        <input type="text" id="in-name" name="name" value="<%= prodToUpdate.getName() %>">
    </div>

    <div>
        <label for="in-brand">brand</label><br>
        <input type="text" id="in-brand" name="brand" value="<%= prodToUpdate.getBrand() %>">
    </div>

    <div>
        <label for="in-cat">category</label><br>
        <input type="text" id="in-cat" name="category" value="<%= prodToUpdate.getCategory() %>">
    </div>

    <div>
        <label for="in-price">price</label><br>
        <input type="number" id="in-price" name="price" value="<%= prodToUpdate.getPrice() %>">
    </div>

    <%--    <input type="submit" value="envoyer">--%>
    <button type="submit">submit</button>
</form>

</body>
</html>
