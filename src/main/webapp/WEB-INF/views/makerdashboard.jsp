<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 08-06-2022
  Time: 01:06 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>MakerDashboard</title>
    <link href="${pageContext.request.contextPath}/resources/css/indexStyle.css" rel="stylesheet" />
</head>
<body>
<h1>Welcome to Maker Dashboard</h1>
<div class="content">
    <a href ="/FinalProject/insertCustomer"><button class="first">Create a customer</button></a>
    <a href="/FinalProject/updateCustomer"><button class="sec">Update Customer</button></a>
    <a href="/FinalProject/viewCustomer"><button class="first">View Customer</button></a>
    <a href="/FinalProject/deleteCustomer"><button class="sec">Delete Customer</button></a>
</div>
</body>
</html>
