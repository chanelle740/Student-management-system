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
  <table border="1" cellpadding="5" class="styled-table">
    <caption><h2>List of Students</h2></caption>
    <tr>
      <th>ID</th>
      <th>First Name</th>
      <th>Last Name</th>
      <th>Gender</th>
      <th>Action</th>
      <th>Action</th>
      <th>Action</th>
    </tr>
    <c:forEach var="student" items="${listStudent}">
      <tr>
        <td><c:out value="${student.id}" /></td>
        <td><c:out value="${student.firstName}" /></td>
        <td><c:out value="${student.lastName}" /></td>
        <td><c:out value="${student.gender}" /></td>
        <td>
          <a href="/javaWapp_war_exploded/edit?id=<c:out value='${student.id}' />">Edit</a>
          &nbsp;&nbsp;&nbsp;&nbsp;</td>
        <td>
          <a href="/javaWapp_war_exploded/delete?id=<c:out value='${student.id}' />">delete</a>
</td>
        <td>
          <a href="/javaWapp_war_exploded/listOneStudent?id=<c:out value='${student.id}' />">View</a>
        </td>
      </tr>
    </c:forEach>
  </table>
</div>
</body>
</html>