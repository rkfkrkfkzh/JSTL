<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>
<h3>redirect</h3>
<c:url var="url" value="step16.jsp"/>
<c:redirect url="${url }">
    <c:param name="name" value="tom"/>
    <c:param name="age" value="14"/>

</c:redirect>
</body>
</html>