<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager, java.sql.Connection, java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
      <h1>FlyAway</h1>
	<form action="search.jsp" method="post">
		Travel Date <input type="date" id="traveldate" name="traveldate"
			placeholder="dd/mm/yyyy" required> </br> </br>
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
	</br>
	</br>
	<datalist id="destination">
		<%
		Class.forName("com.mysql.cj.jdbc.Driver");
		String url1 = "jdbc:mysql://localhost:3306/flyaway";
		String user1 = "root";
		String pass1 = "root12345";
		String sql1 = "SELECT * FROM palaces ;";
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
	</p>
	</br>
	</br> No of Persons
	<input type="number" name="no of persons" required>
	</br>
	</br>
	<input type="submit" value="show available flights">
	</br>
	</br>
	</form>
	<form action="login.jsp" method="post">
		<input type="submit" value="Admin Login">
	</form>

</body>
</html>