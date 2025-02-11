<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<html>
<body onload="MakeAction('list')">
<jsp:include page="navbar.jsp"></jsp:include>

	<%
		Statement st=(Statement)application.getAttribute("st");
		 ResultSet rst=st.executeQuery("select * from employeeinfo");
		%>
		<div style='overflow-x:auto ' class="container mt-4">
    <!-- Table -->
    <table style="border:3px solid gray; background-color: #f9f9f9" class="table table-bordered">
      <!-- Table Name Heading (Centered) -->
      <thead>
        <tr>
          <th style='background-color: orange' colspan="7" class="text-center">Employee-List</th>
        </tr>
        <tr align="center">
          <th>E.id</th>
          <th>First Name</th>
          <th>Last Name</th>
          <th>Phone-No</th>
          <th>Email-Id</th>
          <th>department</th>
          <th>Salary</th>
        </tr>
      </thead>
			<%
			while(rst.next())
			{
			%>
			<tbody>
			<tr align="center">
			<td><%=rst.getString(1) %></td>
			<td><%=rst.getString(2) %></td>
			<td><%=rst.getString(3) %></td>
			<td><%=rst.getString(4) %></td>
			<td><%=rst.getString(5) %></td>
			<td><%=rst.getString(6) %></td>
			<td><%=rst.getString(7) %></td>
			</tr>
			</tbody>
			<%
			}
			 %>
		</table>
	</div>
	
	
</body>
</html>