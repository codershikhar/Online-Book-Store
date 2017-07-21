<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body background="images/background.jpg">

<div style="color:#0000FF">
	<center>
		<img align="middle" src="images/bookbird.jpg" style="margin-right: 28pt">
		<a href="home.jsp"><img align="left" src="images/home.ico" height="40pt"></a><br>
	</center>
</div>

<center>
<div style="background: rgb(64, 64, 64); max-width: 400pt">
	<form  action= "login.jsp"> 
	<h1 style="color: rgb(255, 178, 102);"> Login </h1>
	<p align="left" style="margin-left: 20pt;"> 
	    <font color="white" size="5">Username:</font></left><br>
	    <input name="usernamesignup" type="text" size="64"/>
	</p>
	<p align="left" style="margin-left: 20pt;">
	    <font color="white" size="5">Password:</font><br>
	    <input name="passwordsignup" type="password" size="64"/>
	</p>
	<p> <input type="submit" value="Login"/> </p>
	<p>	<font color="white" size="3">Not a Member?</font>	<a href="register.jsp" style="color: lime;"> Go and Register </a>
	</p>
	</form>
</div>
</center>

</body>
</html>