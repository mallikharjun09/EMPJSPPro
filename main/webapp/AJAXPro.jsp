<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script>
    function getCity(state){
    	if(state!="null" && state!=""){
    		xmlObj = new XMLHttpRequest();
    		
    		xmlObj.onreadystatechange = function(){
    			if(this.readyState == 4 && this.status == 200){
    		       document.getElementById("cities").innerHTML=this.responseText;
    		    }
    		}
    	
    	    xmlObj.open("GET","getcities.jsp?st="+state,true);
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
   <select class="form-control" onchange="getCity(this.value)">
   	  <option value="">Select your state</option>
   	  <option value="ap">Andhra Pradesh</option>
   	  <option value="kl">Kerala</option>
   	  <option value="tn">Tamilnadu</option>
   	  <option value="kn">Karnataka</option>
   </select>
   </div>
   <div class="mb-3" id="cities">
      
   </div>
   </div>
   
</body>
</html>