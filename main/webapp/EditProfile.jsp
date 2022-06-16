<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.ems.models.Employee, com.ems.dao.EmployeeDAO" %>
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
   <%! EmployeeDAO  dao = new EmployeeDAO();%>
   <%
       int id = Integer.parseInt(request.getParameter("empId"));
       Employee emp = dao.displayEmployee(id);
   %>
   
   <div class="container text-center">
      <div class="text-start w-50 border border-info rounded p-3">
        <form class="form" action="UpdateProfile.jsp" method="post">
        	<div class="mb-3">
        	   <label class="form-label">Employee Id</label>
        	   <input type="hidden" name="empId" value="<%=emp.getEmpId()%>"/>
        	   <input type="text" name="empId2" value="<%=emp.getEmpId()%>" disabled class="form-control"/>
        	</div>
        	<div class="mb-3">
        	   <label class="form-label">Employee Name</label>
        	   <input type="text" name="empName" value="<%=emp.getEmpName()%>" placeholder="Employee Name" class="form-control"/>
        	</div>
        	<div class="mb-3">
        	   <label class="form-label">Role</label>
        	   <input type="hidden" name="empRole" value="<%=emp.getRole()%>"/>
        	   <input type="text" name="empRole2" value="<%=emp.getRole()%>" disabled class="form-control"/>
        	</div>
        	<div class="mb-3">
        	   <label class="form-label">Department Id</label>
        	   <input type="hidden" name="deptId" value="<%=emp.getDeptId()%>"/>
        	   <input type="text" name="deptId2" value="<%=emp.getDeptId()%>" disabled class="form-control"/>
        	</div>
        	<div class="mb-3">
        	   <label class="form-label">Gender</label>
        	   <input type="text" name="empGender" value="<%=emp.getGender()%>" placeholder="Gender" class="form-control"/>
        	</div>
        	<div class="mb-3 text-end">
        	   <button class="btn btn-success" type="submit"/>Update</button>
        	</div>
        </form>
      </div>
   </div>
</body>
</html>