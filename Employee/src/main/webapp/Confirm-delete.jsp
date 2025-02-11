
<%@page import="java.sql.*"%>
<html>
<body onload="MakeAction('delete')">
 
  
  <%
  	 String eid=request.getParameter("eid");
 	 PreparedStatement ps=(PreparedStatement)application.getAttribute("search");
 	 ps.setString(1, eid);
 	 ResultSet rst= ps.executeQuery();
 	if(rst.next())
  
  	{
  	%>
  	<jsp:include page="navbar.jsp"></jsp:include>
  	<form action="Delete-record.jsp">
    	<div class="container mt-5">
    	<!-- Table -->
    	<table style="border: 2px solid gray; background-color: #f9f9f9" class="table table-bordered w-50 m-auto">
    	  <!-- Table Name Heading (Centered) -->
      	<thead align="center">
        <tr>
          <th style="background-color: orange;" colspan="3" class="text-center">Employee-Details</th>
        </tr>
        <tr>
          <th>Eid</th>
          <td><%=eid%><input type="hidden" name='eid' value="<%=rst.getString("Eid")%>"></td>
        </tr>
        <tr>
          <th>First Name</th>
          <td><%=rst.getString(2)%></td>
        </tr>
         <tr>
          <th>Last Name</th>
          <td><%=rst.getString(3)%></td>
        </tr>
         <tr>
          <th>Phone-No</th>
          <td><%=rst.getString(4)%></td>
        </tr>
         <tr>
          <th>Email-Id</th>
          <td><%=rst.getString(5)%></td>
        </tr>
         <tr>
          <th>Department</th>
          <td><%=rst.getString(6)%></td>
        </tr>
         <tr>
          <th>Salary</th>
          <td><%=rst.getString(7)%></td>
        </tr>
        <tr>
        <td></td>
        <td align="right"><button style="background-color: red; font-size: 18px; border-radius: 5px;">Confirm Delete</button>
        <input style="background-color: blue; font-size: 18px; border-radius: 5px;"type='button' value='Cancel'>
        </td>
        </tr>
      </thead>
  
    </table>
  </div>
  </form>
  <%
  }
 	else
 	{
 		%>
 		<jsp:include page="Employee-delete.jsp"></jsp:include>
 		<div style='text-align: center; font-family: cursive;'>
 		<p style='color:red'>Employee Id <%=eid %> Does Not Exist.</p>
 		</div>
 		<%
 	}
 %>
   </body>
</html>