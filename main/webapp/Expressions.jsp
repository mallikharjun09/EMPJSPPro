<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
   <!-- Printing a Statement in Core tags -->
   <core:out value="Welcome to JSTL" />
   
   <!-- Initializing a variable in Core tags -->
   <core:set var="x" value="5"/>
   
   <!-- Checking condition in Core tags -->
   <core:if test="${x > 3}">
   		<core:out value="Yes ${x} is greater than 3" />
   </core:if>
   <core:if test="${x < 3}">
   		<core:out value="${x} is less than 3" />
   </core:if>
   
   <table>
   <core:forEach begin="1" end="12" step="1" var="i">
      <tr>
         <td>${x}</td>
         <td>X</td>
         <td>${i}</td>
         <td>=</td>
         <td>${x*i}</td>
      </tr>
   </core:forEach>
   </table>
</body>
</html>