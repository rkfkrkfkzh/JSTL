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
<%
    String[] strings = {"aaa", "bbb", "ccc", "ddd", "eee"};
%>

<c:set var="strings" value="<%=strings %>"/>
<table border="1" cellspacing="0">
    <c:forEach var="s" items="${strings}" varStatus="status">
        <tr>
            <td>
                반복횟수 : ${status.count}<br>
                <c:if test="${status.firest }">
                    첫번째 데이터
                </c:if>

                <c:if test="${status.last }">
                    마지막 데이터
                </c:if>
                <br>
                    ${status.current }
            </td>

        </tr>
    </c:forEach>
</table>
</body>
</html>