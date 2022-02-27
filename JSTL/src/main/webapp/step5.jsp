<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.ArrayList, model.MemberVO" %>
<!-- 코러라이브러리를 사용하기 위해서 taglib디렉트브 코어로 설정 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>
<%
    String fa[] = {"구하라", "니콜", "한승연", "박규리", "강지영"};
    request.setAttribute("farray", fa);
%>

1. scriptlet으로 배열 출력하기
<br>

<%
    String f[] = (String[]) request.getAttribute("farray");
    for (int i = 0; i < fa.length; i++) {
%>
<%=i%>
<%=fa[i]%>
<%
    }
%>
<hr>
2.JSTL로 배열 출력하기
<%--farray에 담긴 내용이 far에 하나씩 들어가서 출력 --%>
<c:forEach items="${requestScope.farray }" var="far" varStatus="vs">
    <%--varStatus 숫자표시 --%>
    ${vs.count } ${far },
</c:forEach>
<hr>

<%
    ArrayList<String> list = new ArrayList<String>();
    list.add("구하라");
    list.add("니콜");
    list.add("한승연");
    list.add("강지영");
    list.add("박규리");
    request.setAttribute("kara", list);
%>
3. jstl로 ArrayList 출력하기
<%
    ArrayList<MemberVO> kList = (ArrayList<MemberVO>) request.getAttribute("kara");
    for (int i = 0; i < list.size(); i++) {
%>
<%=kList.get(i)%>
<%
    }
%>

4.JSTL로 ArrayList 요소 출력하기
<br>
<c:forEach items="${requestScope.kara}" var="mem">
    ${mem },
</c:forEach>


</body>
</html>