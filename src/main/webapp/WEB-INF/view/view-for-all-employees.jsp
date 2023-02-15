<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2/14/2023
  Time: 8:40 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Information for all employees</title>
</head>

<body>

<security:authorize access="hasRole('HR')">
    <input type="button" value="salary" onclick="window.location.href='hr_info'">
    Only for HR
</security:authorize>
<security:authorize access="hasRole('MANAGER')">
    <input type="button" value="performance" onclick="window.location.href='manager_info'">
    Only for managers
</security:authorize>

</body>
</html>
