<%@page import="model.Post"%>
<%@page import="model.Chat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<form>
		<div class="container">
			<div class="row">
				<c:forEach var="p" items="${chat.posts}">
					<div class="card col-sm-4 " style="overflow: scroll;">
						<ul class="list-group list-group-flush">
							<li class="list-group-item">
								<div class="d-flex w-100 justify-content-between">
									<h5 class="mb-1">${p.nick}</h5>
								</div> <c:forEach var="mes" items="${p.content}">
									<p>Message: ${mes}</p>
								</c:forEach>
							</li>
						</ul>
					</div>
				</c:forEach>

				<div class="col-sm-8">
					<div class="chatbody">

						<table class="table">
							<tr>
								<td>message</td>
								<td>time</td>
							</tr>
						</table>

					</div>

					<div class="row">
						<div class="col-xs-9">
							<input type="text" placeholder="Message..." class="form-control"
								[(ngModel)]="message" name="content" />
						</div>
						<div class="col-xs-3">
							<button class="btn btn-info btn-block" (click)="" type="submit">Send</button>
						</div>
					</div>

				</div>
			</div>
		</div>
	</form>
</body>
</html>