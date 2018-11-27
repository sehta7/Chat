<%@page import="model.Post"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
	<div class="container">
		<div class="row">
			<h1>Table of Content</h1>
		</div>
		<div class="row">

			<div class="row">
				<form action="Chat-1.0">
					<p>Choose your nick</p>


					<div class="row">
						<div class="col-xs-9">
							<input type="text" placeholder="Nick" class="form-control"
								[(ngModel)]="message" name="nick" />
						</div>
						<div class="col-xs-3">
							<button class="btn btn-info btn-block" (click)="" type="submit">Go
								to chat</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>