<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="com.digitalbd.Helper,com.digitalbd.trains,java.util.ArrayList,AllLayout.Train,java.util.Iterator" %>   
<%@ include file="header.jsp" %>
<%

	trains trn = new trains();

	if(request.getParameter("delete") != null){
		String trnId = (String) request.getParameter("delete");
		trn.Delete(trnId);
	}

	ArrayList<Train> trainlist = new ArrayList<Train>();
	trainlist = trn.getAll();
	Iterator trnIt = trainlist.iterator();
%>
<div class="text-right">
	<a href="Add.jsp">Create Bus</a>
</div>
<br>
<div class="box successfully_purschase_ticket">
	<h2>All Bus List</h2>
	<table border="1" >
		<tr>
			<td width="100">Bus Code</td>
			<td width="100">Name</td>
			<td width="100">Bus Type</td>
			<td width="100">Total Seat</td>
			<td width="100">Actions</td>
		</tr>
		<%
		while(trnIt.hasNext()){
			Train trin = (Train) trnIt.next();
			
			%>
			<tr>
				<td><%= trin.code %></td>
				<td><%= trin.type %></td>
				<td><%= trin.name %></td>
				<td><%= trin.totalSeat %></td>
				<td><a href="?delete=<%= trin.id %>" class="btn btn-sm btn-danger">Delete</a></td>
			</tr>
			<%
		}
		%>
		
	</table>
</div>
