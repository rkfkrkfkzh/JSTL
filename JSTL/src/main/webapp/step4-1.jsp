<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!-- 코러라이브러리를 사용하기 위해서 taglib디렉트브 코어로 설정 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>
<c:set var="name" value="${param.userName}"></c:set>
<c:set var="age" value="${param.userAge}"></c:set>
<c:choose>

    <c:when test="${age>18 }">
        ${name }님 성인
    </c:when>

    <c:when test="${age<=18 && age>=13 }">
        ${name }님 청소년
    </c:when>

    <c:otherwise>
        ${name }님 어린이
    </c:otherwise>

</c:choose>
</body>
</html>