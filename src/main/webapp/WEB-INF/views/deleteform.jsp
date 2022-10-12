
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8"  isELIgnored="false"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Create Customer</title>
    <link href="${pageContext.request.contextPath}/resources/css/form.css" rel="stylesheet" />
</head>
<body>
<h2>User : Modify</h2><br>
<c:if test="${msg != null}">
    <i style="color: cornflowerblue;">${msg}</i>
</c:if>
<div class="box">
    <h4>User Detail</h4>
    <div class="form">
        <form:form action="deleteacustomer" method="post" >
            <div class="customer-form">
                <label class="required" for="userCode">User Code</label>
                <input type="number" name="userCode" id="userCode" required><br>
            </div>
            <input class="saveBtn" type="submit" value="Save">
            <input class="cancelBtn" type="reset" value="Cancel">
        </form:form>
    </div>
</div>

<a href="index.jsp" id="home"><button>HOME</button></a>
</body>
</html>
