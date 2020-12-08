<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="css/css.css">
</head>
<body>
	<%
	String section = request.getParameter("section") != null ? request.getParameter("section") : "";
	%>
	<%@ include file="static/header.jsp" %>
	<%@ include file="static/nav.jsp" %>
	
	<%
		switch(section) {
		case "insert":
			%> <%@include file="page/insert.jsp" %> <%
			break;
		case "total_sale":
			%> <%@include file="page/total_sale.jsp" %> <%
			break;
		case "product_sale":
			%> <%@include file="page/product_sale.jsp" %> <%
			break;
		case "category_sale":
			%> <%@include file="page/category_sale.jsp" %> <%
			break;
		default:
			%> <%@include file="static/index.jsp" %> <%
		}
	%>
	<%@ include file="static/footer.jsp" %>
</body>
</html>