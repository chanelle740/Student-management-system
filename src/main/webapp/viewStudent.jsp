<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 4/30/2021
  Time: 9:55 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Students Managment</title>
    <style><%@include file="/mystyle.css"%></style>
</head>
<body>
<center>
    <h1>Students Management</h1>
    <h2>
        <a href="/javaWapp_war_exploded/new">Add New Student</a>
        &nbsp;&nbsp;&nbsp;
        <a href="/javaWapp_war_exploded/list">List All Students</a>
    </h2>
</center>
<div align="center">
<%--    <table border="1" cellpadding="5" class="styled-table">--%>
<%--        <caption><h2>Single Student</h2></caption>--%>
<%--        <tr class="tablerow">--%>
<%--            <th>ID</th>--%>
<%--            <th>First Name</th>--%>
<%--            <th>Last Name</th>--%>
<%--            <th>Gender</th>--%>
<%--            <th>Action</th>--%>
<%--            <th>Action</th>--%>
<%--        </tr>--%>
<div class="styled">
        <h3> ID : <c:out value="${listOneStudent.id}"/></h3>
        <h3> First Name : <c:out value="${listOneStudent.firstName}"/></h3>
        <h3> Last Name : <c:out value="${listOneStudent.lastName}"/></h3>
        <h3> Gender : <c:out value="${listOneStudent.gender}"/></h3>

    <a class="linkk" href="/javaWapp_war_exploded/edit?id=<c:out value='${listOneStudent.id}' />">Edit</a>
    <a class="linkk" href="/javaWapp_war_exploded/delete?id=<c:out value='${listOneStudent.id}' />">Delete</a>
    </div>
<%--            <tr>--%>
<%--                <td><c:out value="${listOneStudent.id}" /></td>--%>
<%--                <td><c:out value="${listOneStudent.firstName}" /></td>--%>
<%--                <td><c:out value="${listOneStudent.lastName}" /></td>--%>
<%--                <td><c:out value="${listOneStudent.gender}" /></td>--%>
<%--                <td>--%>
<%--                    <a href="/javaWapp_war_exploded/edit?id=<c:out value='${listOneStudent.id}' />">Edit</a>--%>
<%--                </td>--%>
<%--                <td>--%>
<%--                    <a href="/javaWapp_war_exploded/delete?id=<c:out value='${listOneStudent.id}' />">Delete</a>--%>

<%--                </td>--%>
<%--            </tr>--%>
<%--        </>--%>
<%--    </table>--%>
</div>
</body>
</html>