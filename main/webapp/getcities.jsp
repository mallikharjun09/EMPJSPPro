<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="state" value="${param.st}"/>
<select class="form-control" name="city">
   <option value="">Select the City</option>
   <c:if test="${state eq \"ap\"}">
      <option value="vskp">Visakhapatnam</option>
      <option value="bza">Vijayawada</option>
      <option value="gnt">Guntur</option>
      <option value="tpty">Tirupati</option>
   </c:if>
   <c:if test="${state eq \"tn\"}">
      <option value="mad">Chennai</option>
      <option value="cbt">Coimbatore</option>
      <option value="mdri">Madhurai</option>
      <option value="trch">Trichy</option>
   </c:if>
   <c:if test="${state eq \"kl\"}">
      <option value="tvdm">Thiruvanantapuram</option>
      <option value="chy">Cochi</option>
      <option value="alp">Alappujha</option>
      <option value="enk">Ernakulam</option>
   </c:if>
   <c:if test="${state eq \"kn\"}">
      <option value="bglr">Bangaluru</option>
      <option value="mgr">Mangaluru</option>
      <option value="msr">Mysore</option>
      <option value="yspt">Yeswantapura</option>
   </c:if>
</select>