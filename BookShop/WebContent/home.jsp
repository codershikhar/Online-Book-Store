<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HOME PAGE</title>
</head>
<body background="images/background.jpg">

<div style="color:#0000FF">
	<center>
		<img align="top" src="images/bookbird.jpg"><br>
		<div style="background-color: maroon; max-width: 772pt" align="right">
			<a href="login.jsp" style="color: green;">Login</a>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="register.jsp" style="color: green;">Register</a>&nbsp;&nbsp;
			<form action="home.jsp">
			<center>
				<hr>
				<font color="aqua" size="5">Filters</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		  		<input type="checkbox" name="filters" value="programming">Programming&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="checkbox" name="filters" value="novel">Novel&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="checkbox" name="filters" value="sports">Sports&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="checkbox" name="filters" value="manga">Manga&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="checkbox" name="filters" value="comics">Comics&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input align="middle" type="submit" value="Apply">
			</center>
		  	</form>
		</div>
	</center>
</div>

<%
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost/bookshop", "root", "sunny123");
Statement st = con.createStatement();
ResultSet rs = st.executeQuery("select * from books");
%>
<div align="center">
<table>
<%
while(rs.next())
{
	String id = rs.getString(1);
	String name = rs.getString(2);
	String author = rs.getString(3);
	int price = rs.getInt(4);
	String image = rs.getString(5);	%>
	<tr>
	<td align="center" bgcolor="#34495E">
	<p align="center"> 
		<%
		String url = "<a href='item.jsp?n="+id+"'>";
		out.print(url);
		out.print("<img src='images/"+image+"' height='200pt'><br>");
		out.print("<font color='white' size='5'>"+name+"</font>");
		%>
	    </a>
	</p>
	</td>
	<%
		if(rs.next())
		{
			id = rs.getString(1);
			name = rs.getString(2);
			author = rs.getString(3);
			price = rs.getInt(4);
			image = rs.getString(5);
			%>
			<td align="center" bgcolor="#34495E">
			<p align="center"> 
				<%
				url = "<a href='item.jsp?n="+id+"'>";
				out.print(url);
				out.print("<img src='images/"+image+"' height='200pt'><br>");
				out.print("<font color='white' size='5'>"+name+"</font>");
				%>
			    </a>
			</p>
			</td>
			<%
		}
		if(rs.next())
		{
			id = rs.getString(1);
			name = rs.getString(2);
			author = rs.getString(3);
			price = rs.getInt(4);
			image = rs.getString(5);
			%>
			<td align="center" bgcolor="#34495E">
			<p align="center"> 
				<%
				url = "<a href='item.jsp?n="+id+"'>";
				out.print(url);
				out.print("<img src='images/"+image+"' height='200pt'><br>");
				out.print("<font color='white' size='5'>"+name+"</font>");
				%>
			    </a>
			</p>
			</td>
			<%
		}
	%>
	</tr>
	<%
}
out.print("</table>");
out.print("</div>");
rs.close();
st.close();
con.close();
%>



</div>

</body>
</html>