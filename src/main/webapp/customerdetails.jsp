<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
	<%@page import="java.sql.DriverManager, java.sql.Connection, java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BOOKING SLOT</title>
</head>
<body>
      <h1>Select Route:</h1>
	<form action="showdetails.jsp" method="post">
	<datalist id="sourece">
		<%
		Class.forName("com.mysql.cj.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/flyaway";
		String user = "root";
		String pass = "root12345";
		String sql = "SELECT * FROM palaces ";
		Connection con = DriverManager.getConnection(url, user, pass);
		ResultSet rs = con.createStatement().executeQuery(sql);
		while (rs.next()) {
			String sourece = rs.getString("name");
		%>
		<option value="<%=sourece%>" />
		<%
		}
		%>
	</datalist>
	<p>
		Source: <input type="text" name="sourece" list="sourece" required/>
	</p>
		<datalist id="destination">
		<%
		Class.forName("com.mysql.cj.jdbc.Driver");
		String url1 = "jdbc:mysql://localhost:3306/flyaway";
		String user1 = "root";
		String pass1 = "root12345";
		String sql1 = "SELECT * FROM palaces";
		Connection con1 = DriverManager.getConnection(url1, user1, pass1);
		ResultSet rs1 = con.createStatement().executeQuery(sql1);
		while (rs1.next()) {
			String destination = rs1.getString("name");
		%>
		<option value="<%=destination%>" />
		<%
		}
		rs.close();
		con.close();
		%>
	</datalist>
	<p>
		Destination: <input type="text" name ="destination" list="destination" required/>
		<h2>Enter your details</h2>
		<%
		int count = Integer.parseInt(request.getParameter("no of persons"));
		for (int i = 1; i <= count; i++) {
		%>
		Passenger Name <%=i %> : <input type="text" name="fullname" required> </br> </br> 
		Aadhar UID <%=i %> : <input type="number" name="uid" required></br> </br>
		Phone Number <%=i %> : <input type="number" name="phone" required> </br> </br> 
		Age <%=i %> : <input type="number" name="age" required></br></br>
		-----------------------------------------------------------------------</br></br>
		<%
		}
		%>
		<input type="submit" value="Book Ticket"></br></br>
	</form>

</body>
</html>