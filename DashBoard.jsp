<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Risk based Trade Recommendation system</title>
</head>

<body>
	<h4>
		<%
			String user = request.getParameter("user");
			out.print("Welcome " + user + " to Risk Based Trade Recommendation System");
		%>
	</h4>
	<style>
/* Style The Dropdown Button */
.dropbtn {
	background-color: #87CEFA;
	color: white;
	padding: 16px;
	font-size: 16px;
	border: none;
	cursor: pointer;
}
/* The container <div> - needed to position the dropdown content */
.dropdown {
	position: relative;
	display: inline-block;
}

/* Dropdown Content (Hidden by Default) */
.dropdown-content {
	display: none;
	position: absolute;
	background-color: #87CEFA;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
}
.History{
	width:50%;
	border:1px solid #000;
	margin:20px auto;
	text-align:center,left;
	padding:1em
}
/* Links inside the dropdown */
.dropdown-content a {
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
}

/* Change color of dropdown links on hover */
.dropdown-content a:hover {
	background-color: #87CEFA
}

/* Show the dropdown menu on hover */
.dropdown:hover .dropdown-content {
	display: block;
}

/* Change the background color of the dropdown button when the dropdown content is shown */
.dropdown:hover .dropbtn {
	background-color: #00BFFF;
}

.button {
	background-color: #87CEFA;
	color: white;
	padding: 16px;
	font-size: 16px;
	border: none;
	cursor: pointer;
}

form fieldset input[type="submit"] {
	background-color: #00BFFF;
	border: none;
	border-radius: 3px;
	-moz-border-radius: 3px;
	-webkit-border-radius: 3px;
	color: #f4f4f4;
	cursor: pointer;
	font-family: 'Open Sans', Arial, Helvetica, sans-serif;
	height: 15px;
	text-transform: uppercase;
	width: 300px;
	-webkit-appearance: none;
}
</style>
	
	
		<br> <br>
		<%@ page import="com.te.prj.*" %>
		<form action="Factory" method="GET" name="risk">
		<div >
			<input type="submit" name="High" value="High" id="High">
			<input type="submit" name="Low" value="Low" id="Low">
			<input type="submit" name="Mid" value="Mid" id="Mid">
		
	</div>
	</form>
	<%@ page import="java.sql.*" %>

<%
	
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "1133");
		Statement stmt =null;
		stmt=conn.createStatement();
		ResultSet rs=null;
		String query="Select * from  storeData where UserName='"+user+"'";
		rs=stmt.executeQuery(query);
		%>
		<fieldset class="History">
		<table>
		
		<tbody>
		<tr><th>HISTORY</th></tr>
		<tr><td>Company Name</td><td>Stock Prizes</td><td>Number of Stocks</td><td>Date</td></tr>
		<%

		while(rs.next())
		{
			String cName=rs.getString("COMPANYNAME");
			String Date=rs.getString("DATESTORE");
			int NoOfStocks=rs.getInt("NUMBEROFSTOCKS");
			double StockPrize=rs.getDouble("STOCKPRIZE");
			out.println("<tr><td>"+cName+"</td><td>"+StockPrize+"</td><td>"+NoOfStocks+"</td><td>"+Date+"</td></tr>");
		}
			
		
	}
	catch(SQLException e)
	{
		e.printStackTrace();
		out.println("SQLException");
	}
	catch(ClassNotFoundException e)
	{
		out.println("CNFException");
	}

	
	catch(Exception e)
	{
		out.println("Exception");
	}
%>
</tbody>
</table>
</fieldset>
	<!-- <input type="button" value="High" style="font-size:11pt;color:white;background-color:cornflowerblue;padding:17px" >  -->
<body background="mark2.jpeg">
	<%
	
	%>
 </body>
</html>
