<%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head><title>session 영역</title></head>
<body>
    <h2>페이지 이동 후 session 영역의 속성 읽기</h2>
    <%
    ArrayList<String> list = (ArrayList<String>)session.getAttribute("list"); 
   if (list == null) {
	   out.println("null");
	   return;
   }
    
    for (String str : list)
        out.print(str + "<br/>");
    %>    
</body>
</html>
