<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: lucas
  Date: 6/19/17
  Time: 1:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Title</title>
</head>
<body>

<c:forEach items="${list}" var="it">

  <tr>
    <td>${it.name}</td>
    <td>${it.desc}</td>
  <tr>

</c:forEach>c:forEach>
</body>
</html>
