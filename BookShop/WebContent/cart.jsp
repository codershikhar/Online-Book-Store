<%@page import="java.sql.*"%>
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

<%!
int count=0;
String item_id[] = new String[100];
int item_quantity[] = new int[100];
int total=0;
%>
<%
item_id[count] = request.getParameter("id");
item_quantity[count] = Integer.parseInt(request.getParameter("quantity"));
count++;
%>
<center><font size="10" color="white">YOUR CART</font></center>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost/bookshop", "root", "sunny123");
Statement st = con.createStatement();
ResultSet rs = st.executeQuery("select * from books");

String id, name, author, image;
int price;
out.print("<center><table>");
for(int i=0; i<count; i++)
{
	rs = st.executeQuery("select * from books");
	out.print("<tr>");
	while(rs.next())
	{
		id = rs.getString(1);
		name = rs.getString(2);
		author = rs.getString(3);
		price = rs.getInt(4);
		image = rs.getString(5);
		if(id.equals(item_id[i]))
		{
			%>
			<td align="center" bgcolor="#34495E">
			<%out.print("<font size='6' color='white'>"+(i+1)+"</font>");%>
			</td>
			<td align="center" bgcolor="#34495E">
			<%out.print("<img src='images/"+image+"' height='70pt'>");%>
			</td>
			<td align="center" bgcolor="#34495E">
			<%out.print("<font size='6' color='white'>Title : "+name+"<br>Price : Rs "+price+"</font>");%>
			</td>
			<td align="center" bgcolor="#34495E">
			<%out.print("<font size='6' color='white'>Quanity : "+item_quantity[i]+"<br>Sub-Total : "+(price*item_quantity[i])+"</font>");%>
			</td>
			<%
			break;
		}
	}
	out.print("</tr>");
}
out.print("</table></center>");
rs.close();
st.close();
con.close();
%>

<br>
<center>
<div style="background-color: maroon; max-width: 450pt">
	<a href="home.jsp" style="color: green;">Click To Continue Shopping...</a>&nbsp;&nbsp;
	<hr>
	<h1 style="color: rgb(255, 178, 102);"> Enter Details </h1>
	<div align="left">
	<form action="confirm.jsp">
	<font color="white" size="5" style="margin-left: 20pt">Your Name : </font>
	<input type="text" name="name" style="margin-left: 45pt" size="45"><br>
	<font color="white" size="5" style="margin-left: 20pt">Your Address : </font>
	<input type="text" name="address"  style="margin-left: 29pt" size="45"><br>
	<font color="white" size="5" style="margin-left: 20pt">Your Contact No. : </font>
	<input type="text" name="Contact"  style="margin-left: 1pt" size="45"><br>
  	</form>
	</div>
  	<table>
  	<tr>
 		<td>
 		<form action="confirm.jsp"><input type="submit" value="Submit"></form>
 		</td>
 		<td>
 		<form action="home.jsp"><input type="submit" value="Cancel"></form>
 		</td>
  	</tr>
  	</table>
</div>
</center>
</body>
</html>