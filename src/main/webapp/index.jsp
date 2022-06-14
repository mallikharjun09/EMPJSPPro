<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.ems.dao.EmployeeDAO, com.ems.models.Employee" %>
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
         <%
              EmployeeDAO dao = new EmployeeDAO();
         	  
              for(Employee emp : dao.displayEmployee()){
         %>
         <tr>
             <td><%= emp.getEmpId() %></td>
             <td><%= emp.getEmpName() %></td>
             <td><%= emp.getRole() %></td>
             <td><%= emp.getSalary() %></td>
             <td><%= emp.getGender() %></td>
             <td>
                 <a class="btn btn-warning" href="EditProfile.jsp?empId=<%=emp.getEmpId() %>">Edit</a>
                 <a class="btn btn-danger" href="DeleteEmployee.jsp?empId=<%=emp.getEmpId() %>">Delete</a>
             </td>
         </tr>         
         <%
            	  
              }
         %> 
      </tbody>
   </table>
   </div>
</body>
</html>