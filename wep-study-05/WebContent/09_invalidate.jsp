<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
	session.setAttribute("s_name1", "첫번째 값");
	session.setAttribute("s_name2", "두번째 값");
	session.setAttribute("s_name3", "세 번째 값");
	
	out.print("<h3> >> 세션값을 삭제하기 전 << </h3>");
	Enumeration names;
	names=session.getAttributeNames();
	while(names.hasMoreElements()){
		String name=names.nextElement().toString();
		String value=session.getAttribute(name).toString();
		out.println(name+" : "+value+"<br>");
	}
	
	session.invalidate();
	
	if(request.isRequestedSessionIdValid()==true){
		out.print("유효");
	}else{
		out.print("노노");
	}
	
	%>
</body>
</html>