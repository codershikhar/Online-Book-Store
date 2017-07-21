<%@page import="java.sql.*"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Item View</title>
</head>
<body background="images/background.jpg">
<div style="color:#0000FF">
	<center>
		<img align="middle" src="images/bookbird.jpg" style="margin-right: 28pt">
		<a href="home.jsp"><img align="left" src="images/home.ico" height="40pt"></a><br>
	</center>
</div>

<%!
String id;
String name;
String author;
int price;
String image;
%>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost/bookshop", "root", "sunny123");
Statement st = con.createStatement();
ResultSet rs = st.executeQuery("select * from books");
String para_id = request.getParameter("n");
while(rs.next())
{
	id = rs.getString(1);
	name = rs.getString(2);
	author = rs.getString(3);
	price = rs.getInt(4);
	image = rs.getString(5);
	if(id.equals(para_id)){break;}
}
rs.close();
st.close();
con.close();
%>
<br>
<center>
<div style="background-color: rgb(64, 64, 64); max-width: 772pt">
<table>
<tr>
<td>
<%out.print("<img src='images/"+image+"' height='400pt'>");%>
</td>
<td><p  style="margin-left: 20pt">
<font color="white"  size="10">
Id : <font color="gray"><%out.print(id);%></font><br>
Name : <font color="gray"><%out.print(name);%></font><br>
Author : <font color="gray"><%out.print(author);%></font><br>
Price : <font color="gray"><%out.print("Rs "+price);%></font><br>
</font>
</p>

	<center>
	<table>
	<tr>
		<td>
		<form action="cart.jsp">
		<font color="white"  size="7"> Quantity : </font>
		<input type="text" name="quantity">
		<%out.print("<input type='hidden' name='id' value='"+id+"'>"); %>
		<input type="submit" value="Add To Cart">
		</form>
		</td>
		
		<td valign="middle"><br>
		<form style="" action="home.jsp">
		<input type="submit" value="Cancel">
		</form>
		</td>
	</tr>
	</table>
	</center>
</td>
</tr>
</table>
</div>
</center>
</body>
</html>