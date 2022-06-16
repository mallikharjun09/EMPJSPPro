<%@page import="com.ems.dao.EmployeeDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script>
    function getEmp(id){
    	if(id!="null" && id!=""){
    		xmlObj = new XMLHttpRequest();
    		
    		xmlObj.onreadystatechange = function(){
    			if(this.readyState == 4 && this.status == 200){
    		       document.getElementById("tab").innerHTML=this.responseText;
    		    }
    		}
    	
    	    xmlObj.open("GET","GetEmployee.jsp?empId="+id,true);
    	    xmlObj.send();
    	}
    
    }
</script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"/>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
 <div class="container">
   <div class="mb-3">
   <c:set var="dao" value="<%= new EmployeeDAO() %>"/>
   
   <select class="form-control" onchange="getEmp(this.value)">
   	  <c:forEach var="emp" items="${dao.displayEmployee()}">
   	      <option value="${emp.empId}">${emp.empId}</option>
   	  </c:forEach>
   </select>
   </div>
   <div class="mb-3" id="tab">
      
   </div>
   </div>
   
</body>
</html>