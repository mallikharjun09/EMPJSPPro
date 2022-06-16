<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
   <c:set var="driver" value="oracle.jdbc.OracleDriver"/>
   <c:set var="user" value="c##cijd3"/>
   <c:set var="pwd" value="cijd123"/>
   <c:set var="uri" value="jdbc:oracle:thin:@localhost:1521:XE"/>
   
   <sql:setDataSource driver="${driver}" password="${pwd}" url="${uri}" user="${user}" var="db"/>
  
   <sql:query var="q" dataSource="${db}" >
       select * from employees       
   </sql:query>
   <table>
   <c:forEach var="row" items="${q.rows}">
       <tr>
       	  <td>${row.empid}</td>
       	  <td>${row.empname}</td>
       	  <td>${row.role}</td>
       	  <td>${row.deptid}</td>
       	  <td>${row.gender}</td>
       	  <td>${row.dob}</td>
       	  <td>${row.salary}</td>
       </tr>
   </c:forEach>
   </table>
</body>
</html>