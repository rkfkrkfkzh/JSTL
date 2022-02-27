<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page import="model.Member" %>
<%@ page import="java.util.Map,java.util.HashMap" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>
<%
    int x = 10;
    Map<String, String> map = new HashMap<String, String>();
    map.put("name", "aaa");
    map.put("tel", "111");
    map.put("address", "대한민국");

    Member m = new Member("bbb", "1234", "아무개", "bb@email.com");
%>

x를 pageContext에 x이름으로 저장후 출력
<c:set var="x" value="<%=x%>"/>
x : ${x }
<br>

<br>map 객체를 pageContext에 map1이름으로 저장후 출력
<c:set var="map1" value="<%=map%>"/>
map1 => name: ${map1.name }, tel : ${map1.tel }, address :
${map1.address } map tel키의 값을 22로 변경 뒤 출력
<br>
<c:set target="${map1 }" property="tel" value="22"/>
map1 => name: ${map1.name }, tel : ${map1.tel }, address :
${map1.address }

<br> 객체 m의 id를 ccc, name을 장동건으로 수정뒤 출력
<c:set target="<%=m%>" property="id" value="ccc"/>
<c:set target="<%=m%>" property="name" value="장동건"/>
<c:set var=<"m1" value="<%=m%>" />
m => id: ${m1.id } pwd : ${m1.pwd } name : ${m1.name } email :
${m1.email }
<br>

<c:set var="y" scope="page">page</c:set>
<c:set var="y" scope="request">request</c:set>
<c:set var="y" scope="session">session</c:set>
<c:set var="y" scope="application">application</c:set>

${pageScope.y }<br>
${requestScope.y }<br>
${sessionScope.y }<br>
${applicationScope.y }<br>

<c:remove var="y" scope="request"/>

request 삭제 후 <br>
${pageScope.y }<br>
${requestScope.y }<br>
${sessionScope.y }<br>
${applicationScope.y }<br>


</body>
</html>