<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.digitalbd.Helper,com.digitalbd.*,java.sql.ResultSet,AllLayout.*" %>
<%@ include file="header.jsp" %>
<%
String userId = null;
if(session.getAttribute("user_id") != null){
	userId = (String) session.getAttribute("user_id");
}
User user = new User(userId);
%>
<div class="dashboard">
	<div class="box personal_info">
		<h2 class="box_title">Personal Information</h2>
		<table class="table table-bordered">
			<tr>
				<td><strong>Full Name</strong></td>
				<td><%= user.name %></td>
			</tr>
			<tr>
				<td><strong>Email Address</strong></td>
				<td><%= user.email %></td>
			</tr>
			<tr>
				<td><strong>Cell Phone Number</strong></td>
				<td><%= user.phone %></td>
			</tr>
			<tr>
				<td><strong>Address</strong></td>
				<td><%= user.address %></td>
			</tr>
		</table>
	</div>
	
			
	</div>

