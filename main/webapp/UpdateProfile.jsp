<%@page import="com.ems.models.Employee"%>
<%@page import="com.ems.dao.EmployeeDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
     int id = Integer.parseInt(request.getParameter("empId"));
     EmployeeDAO dao = new EmployeeDAO();
     Employee emp = dao.displayEmployee(id);
     
     emp.setEmpName(request.getParameter("empName"));
     emp.setGender(request.getParameter("empGender"));
     
     dao.updateEmployee(emp);
     response.sendRedirect("index.jsp");
%>
</body>
</html>