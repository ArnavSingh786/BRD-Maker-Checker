
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
<h2>User : Add</h2><br>
<c:if test="${msg != null}">
    <i style="color: cornflowerblue;">${msg}</i>
</c:if>
<div class="box" >
    <h4>Status</h4>
    <div class="form">
        <form>
            <div class="customer-form" id="userStatus">
                <label for="status">Active/Inactive</label>
                <select name="status" id="status" required>
                        <option value="active" selected>active</option>
                        <option value="inactive">inactive</option>
                    </select><br>
            </div>
        </form>
    </div>
</div>
<div class="box">
    <h4>User Detail</h4>
    <div class="form">
        <form:form action="createacustomer" method="post" >
            <div class="customer-form">
                <div class="left">
                    <label class="required" for="userCode">User Code</label>
                    <input type="number" name="userCode" id="userCode" required><br>

                    <label class="required" for="firstName">First Name</label>
                    <input type="text" name="firstName" id="firstName" required><br>

                    <label class="required" for="organizationCode">Organization Code</label>
                    <input type="number" name="organizationCode" id="organizationCode" required><br>

                    <label class="required" for="groupCode">Group Code</label>
                    <input type="text" name="groupCode" id="groupCode" required><br>

                    <label for="userType" class="required">User Type</label>
                    <select name="userType" id="userType" required>
                        <option value="Static" selected>Static</option>
                        <option value="Dynamic">Dynamic</option>
                    </select><br>

                    <label for="mobile">Mobile Number</label>
                    <input type="text" name="mobile" id="mobile"><br>

                    <label class="required" for="email">E-Mail Address</label>
                    <input type="email" name="email" id="email" required><br>
                </div>
                <div class="right">

                    <label class="required" for="lastName">Last Name</label>
                    <input type="text" name="lastName" id="lastName" required><br>

                    <label for="organizationName">Organization Name</label>
                    <input type="text" name="organizationName" id="organizationName"><br>

                    <label for="groupName">Group Name</label>
                    <input type="text" name="groupName" id="groupName"><br>

                </div>
            </div>
            <input class="saveBtn" type="submit" value="Save">
            <input class="cancelBtn" type="reset" value="Cancel">
        </form:form>
    </div>
</div>

<a href="index.jsp" id="home"><button>HOME</button></a>
</body>
</html>
