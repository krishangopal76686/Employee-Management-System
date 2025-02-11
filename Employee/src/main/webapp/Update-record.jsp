<%@page import="java.sql.PreparedStatement"%>
<html>
<head>
  <body onload="edit">
  <jsp:include page="navbar.jsp"></jsp:include>
  	<%
  	    String eid=request.getParameter("eid");
  		String firstname=request.getParameter("firstname");
  		String lastname=request.getParameter("lastname");
  		String phone=request.getParameter("phone");
  		String email=request.getParameter("email");
  		String department=request.getParameter("department");
  		String salary=request.getParameter("salary");
  		
  		PreparedStatement ps=(PreparedStatement)application.getAttribute("update");
  		
  		ps.setString(1, firstname);
  		ps.setString(2, lastname);
  		ps.setString(3, phone);
  		ps.setString(4, email);
  		ps.setString(5, department);
  		ps.setString(6, salary);
  		ps.setString(7, eid);
  		
  		ps.executeUpdate();
  	%>
  	<div style="text-align: center">
  		<h1 style='color:green; font-family: cursive; margin-top: 50px;'>Employee record has been update succesfully.</h1>
  	</div>
  </body>
</head>
</html>