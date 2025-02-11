<html>
<body onload="MakeAction('edit')">
	<jsp:include page="navbar.jsp"></jsp:include>
	
	<form action="Show-edit.jsp">
	<div style="margin-top: 50px;">
	    <table style='border:1px solid black; background-color: gray; margin: auto;'>
	   <tr>
	    <td style="padding: 10px; font-size:18px; color:white"><label>Enter Employee Id</label></td>
	    <td style="padding: 10px; font-size:18px;"><input type='text' name='eid' required></td>
	    <td style="padding: 10px;"><button class="btn btn-primary">Update Record</button></td>
	    </tr>
	    </table>
	</div>
	</form>
</body>
</html>