<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 4/30/2021
  Time: 9:53 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
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
    <c:if test="${student != null}">
    <form action="update" method="post">
        </c:if>
        <c:if test="${student == null}">
        <form action="insert" method="post">
            </c:if>
            <table border="1" cellpadding="5" class="styled-table">
                <caption>
                    <h2>
                        <c:if test="${student != null}">
                            Edit Student
                        </c:if>
                        <c:if test="${student == null}">
                            Add Student
                        </c:if>
                    </h2>
                </caption>
                <c:if test="${student != null}">
                    <input type="hidden" name="id" value="<c:out value='${student.id}' />" />
                </c:if>
                <tr>
                    <th>First Name: </th>
                    <td>
                        <input type="text" name="firstName" size="20"
                               value="<c:out value='${student.firstName}' />"
                        />
                    </td>
                </tr>
                <tr>
                    <th>Last Name: </th>
                    <td>
                        <input type="text" name="lastName" size="20"
                               value="<c:out value='${student.lastName}' />"
                        />
                    </td>
                </tr>
                <tr>
                    <th>gender: </th>
                    <td>
                        <input type="text" name="gender" size="5"
                               value="<c:out value='${student.gender}' />"
                        />
                    </td>
                </tr>
                <tr class="button">
                    <td colspan="2" align="center">
                        <input type="submit" value="Save"  class="button"/>
                    </td>
                </tr>
            </table>
        </form>
</div>
</body>
</html>

</body>
</html>
