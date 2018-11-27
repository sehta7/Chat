<%@page import="model.Post"%>
<%@page import="model.Chat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form>
		<p>
			<label>Message:</label> <input type="text" name="content">
			<button type="submit">OK</button>
		</p>
	</form>

	<c:forEach var="p" items="${chat.posts}">
		<p style="color:red">Nick: ${p.nick}</p>
		<c:forEach var="mes" items="${p.content}">
			<p>Message: ${mes}</p>
		</c:forEach>
	</c:forEach>
</body>
</html>