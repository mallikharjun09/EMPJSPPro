<%@page import="com.ems.dao.EmployeeDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="dao" value="<%= new EmployeeDAO() %>"/>
<c:set var="id" value="${param.empId}"/>
<c:set var="emp" value="${dao.displayEmployee(id)}"/>

<table class="table tabple-primary table-striped-columns">
   <tr><th>Employee Name</th><td>${emp.empName}</td></tr>
   <tr><th>Employee Salary</th><td>${emp.salary}</td></tr>
   <tr><th>Employee Gender</th><td>${emp.gender}</td></tr>
   <tr><th>Employee Role</th><td>${emp.role}</td></tr>
   <tr><th>Employee Date of Birth</th><td>${emp.dob}</td></tr>
   <tr><th>Employee Department Id</th><td>${emp.deptId}</td></tr>
</table>

