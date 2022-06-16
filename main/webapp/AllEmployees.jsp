<%@page import="com.ems.dao.EmployeeDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
rel="stylesheet"/>
<script src="	https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
   <div class="container">
       <table class="table">
           <thead class="bg-primary text-white">
          <th>Employee Id</th>
          <th>Employee Name</th>
          <th>Role</th>
          <th>Salary</th>
          <th>Gender</th>
          <th></th>
      </thead>
      <tbody class="table-primary table-striped">
          <c:set var="employees" value="<%=new EmployeeDAO().displayEmployee()%>"/>
          <c:forEach var="emp" items="${employees}">
              <tr>
                 <td class="text-center">${emp.empId}</td>
                 <td >${emp.empName}</td>
                 <td >${emp.role}</td>
                 <td >${emp.salary}</td>
                 <td >${emp.gender}</td>
                 <td>
                    <a class="btn btn-warning" href="EditProfile.jsp?empId=${emp.empId}">Edit</a>
                    <a class="btn btn-danger" href="DeleteEmployee.jsp?empId=${emp.empId}">Delete</a>
             	 </td>
              </tr>
          </c:forEach>
      </tbody>
       </table>
   </div>
</body>
</html>