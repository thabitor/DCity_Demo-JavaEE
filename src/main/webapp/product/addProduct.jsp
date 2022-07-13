<%--
  Created by IntelliJ IDEA.
  User: JAVA
  Date: 12/07/2022
  Time: 15:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form method="post" action="<%=request.getContextPath()%>/product/add">

    <div>
        <label for="pname">Product name:</label><br>
        <input type="text" id="pname" name="pname"><br>
    </div>
    <div>
        <label for="brand">Brand:</label><br>
        <input type="text" id="brand" name="brand">
    </div>
    <div>
        <label for="category">Category:</label><br>
        <input type="text" id="category" name="category">
    </div>
    <div>
        <label for="price">Category:</label><br>
        <input type="number" id="price" name="price">
    </div>

    <button type="submit">submit</button>

</form>

</body>
</html>
