<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
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
	<form  action= "register.jsp"> 
	<h1 style="color: rgb(255, 178, 102);"> Sign up </h1>
	<p align="left" style="margin-left: 20pt;"> 
	    <font color="white" size="5">Your username:</font></left><br>
	    <input name="usernamesignup" type="text" size="64"/>
	</p>
	<p align="left" style="margin-left: 20pt;"> 
	    <font color="white" size="5">Your email:</font> <br>
	    <input name="emailsignup" type="text" size="64"/> 
	</p>
	<p align="left" style="margin-left: 20pt;">
	    <font color="white" size="5">Your address:</font> <br>
	    <input name="addresssignup" type="text" size="64"/>
	</p>
	<p align="left" style="margin-left: 20pt;">
	    <font color="white" size="5">Your phone number:</font> <br>
	    <input name="phonesignup" type="text" size="64"/>
	</p>
	<p align="left" style="margin-left: 20pt;">
	    <font color="white" size="5">Your password:</font><br>
	    <input name="passwordsignup" type="password" size="64"/>
	</p>
	<p align="left" style="margin-left: 20pt;"> 
	    <font color="white" size="5">Please confirm your password:</font> <br>
	    <input name="passwordsignup_confirm" type="password" size="64"/>
	</p>
	<p> <input type="submit" value="Sign up"/> </p>
	<p>	<font color="white" size="3">Already Registered?</font>	<a href="login.jsp" style="color: lime;"> Go and log in </a>
	</p>
	</form>
</div>
</center>

</body>
</html>