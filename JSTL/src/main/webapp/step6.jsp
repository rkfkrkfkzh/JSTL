<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@page import="model.Member" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.Map, java.util.HashMap" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>
<%
    String[] strings = {"aaa", "bbb", "ccc"};

    ArrayList<Member> members = new ArrayList<Member>();
    members.add(new Member("id1", "111", "name1", "email1"));
    members.add(new Member("id2", "222", "name2", "email2"));
    members.add(new Member("id3", "333", "name3", "email3"));

    Map<String, String> map = new HashMap<String, String>();
    map.put("name", "xxx");
    map.put("tel", "111");
    map.put("address", "대한민국");
%>

<%--<% %>에 생성한 배열 ArrayListt,Map객체를 set캐그로 선언한 변수에 할당한다. 	 --%>

<c:set var="strings" value="<%=strings %>"/>
<c:set var="members" value="<%=members %>"/>
<c:set var="map" value="<%=map %>"/>

<!-- i가 1~5까지 1씩 증가하며 반복한 i값을 출력한다.	 -->
1~5출력
<c:forEach var="i" begin="1" end="5">
    ${i},
</c:forEach>

<!-- i가 1~5까지 2씩 증가하며 반복한 i값을 출력한다.	 -->
1~5사이의 2씩 증가하며 반복한 i값을 출력<br>
<c:forEach var="i" begin="1" end="5" step="2">
    ${i },
</c:forEach>

*String []에 저장된 데이터 출력<br>
<c:forEach var="s" items="${strings }">
    ${s },
</c:forEach>

*ArrayList에 저장된 데이터 출력
<c:forEach var="m" items="${members }">
    id : ${m.id }, pwd : ${m.pwd }, name : ${m.name },
    email : ${m.email } <br>
</c:forEach>

*Map에 저장된 데이터 출력<br>
<c:forEach var="m" items="${map }">
    ${i},
</c:forEach>


</body>
</html>