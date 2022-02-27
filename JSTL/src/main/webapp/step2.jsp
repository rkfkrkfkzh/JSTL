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
JSTL IF 연습 <br>
<c:if test="true">
    true 이므로 수행</c:if>
<hr>

<c:if test="false">
    <script type="text/javascript">
        alert("하하하");
    </script>
</c:if>
<hr>

<a href="step2.jsp? command=java">현 페이지 호출 command전달</a>
<%--el은 null일 경우 출력되지 않음
넘어온 파라메터 값을 다음과 같이 받아 출력할 수 있다. --%>

${param.command }
<br>
<%--param의 command 값이 java	이면 true 반환하여 수행 --%>

<c:if test="${param.command=='java' }">
    ${param.command } 이므로 if문 수행
</c:if>
<hr>
<a href="step2.jsp?id=jstl & age=20">현 페이지 호출 id와 age전달</a>

EL로 id와 age를 출력...<br>

id : ${param.id } age : ${param.age }<br>

<%--나이가 19세 이상이면 성인 --%>
<c:if test="${param.age>=19 }">
    ${param.age }세 이므로 성인

</c:if>

<%-- id가 jstl 이고 age가 20이면 id와 age를 출력 --%>
<c:if test="${param.age>==20 && param.id=='jstl' }">
    id : ${param.id } age : ${param.age }
</c:if>

</body>
</html>