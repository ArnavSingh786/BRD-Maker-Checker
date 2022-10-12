<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 10-06-2022
  Time: 12:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@page import="nucleus.model.Customer"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8"  isELIgnored="false"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Customer Details</title>
    <link href="${pageContext.request.contextPath}/resources/css/customerStyle.css" rel="stylesheet" />
</head>
<body>
<h4>User: Details</h4>
<table>
    <thead>
    <tr>
        <th>User Code</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Organization Code</th>
        <th>Organization Name</th>
        <th>Group Code</th>
        <th>Group Name</th>
        <th>User Type</th>
        <th>Mobile Number</th>
        <th>Email</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="custList" items="${customerArrayList}">
        <tr>
            <td><c:out value="${custList.userCode}"></c:out><br> </td>
            <td><c:out value="${custList.firstName}"></c:out><br> </td>
            <td><c:out value="${custList.lastName}"></c:out><br> </td>
            <td><c:out value="${custList.organizationCode}"></c:out><br> </td>
            <td><c:out value="${custList.organizationName}"></c:out><br> </td>
            <td><c:out value="${custList.groupCode}"></c:out><br> </td>
            <td><c:out value="${custList.groupName}"></c:out><br> </td>
            <td><c:out value="${custList.userType}"></c:out><br> </td>
            <td><c:out value="${custList.mobileNo}"></c:out><br> </td>
            <td><c:out value="${custList.email}"></c:out><br> </td>
        </tr>

    </c:forEach>
    </tbody>
</table>

<br><br>
<!-- u should have the action ="logout" ---- is manadatory -->
<form:form  action="logout" method="post">
    <input type="submit" class= "logoutBtn" value="logout"/>
</form:form>
<br><br>
<a href="index.jsp" id="home"><button>HOME</button></a>
</body>
</html>