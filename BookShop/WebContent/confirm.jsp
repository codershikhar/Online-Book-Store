<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="images/background.jpg">

<div style="color:#0000FF">
	<center>
		<img align="middle" src="images/bookbird.jpg" style="margin-right: 28pt">
		<a href="home.jsp"><img align="left" src="images/home.ico" height="40pt"></a><br>
	</center>
</div>

<center>
<div style="background-color: rgb(64, 64, 64); max-width: 772pt">
<h1 style="color: rgb(255, 178, 102);"> Your Order Has Been Confirmed With Confirmation Number #
<%Random randomGenerator = new Random();
out.print(randomGenerator.nextLong());%> </h1>
<h1 style="color: rgb(255, 178, 102);"> The Books Shall Be Delivered Within 2 Working Days. </h1>
<br>
<h1 style="color: rgb(255, 178, 102);"> Thank You for Online Book Shopping. </h1>
</div>
</center>
</body>
</html>