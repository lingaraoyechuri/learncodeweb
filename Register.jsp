<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<header>
<%@ include file= "Head.jsp" %>
</header>
<article>
<h1 class ="page-header"> Registration Form</h1>
<form name="registrationForm" class ="form-horizontal" action="registeruser.jsp" method ="post">
<div class= "form-group">
  <label class= "col-md-2 control-label">User-name :</label>
  <div class="col-md-4">
  <input type= "text" class="form-control" name= "user name" required="required"/>
  </div>
</div>

<div class= "form-group">
  <label class= "col-md-2 control-label">password :</label>
  <div class="col-md-4">
  <input type= "password" class="form-control" name= "password" required="required"/>
  </div>
</div>
<div class= "form-group">
  <label class= "col-md-2 control-label">Unique number :</label>
  <div class="col-md-4">
  <input type= "text" class="form-control" name= "unique number" required="required"/>
  </div>
</div>
<div class ="form-group">
   <div class="col-md-4 col-md-offset-2">
     <input type="submit" name="btnregister" class="btn btn-primary"/>
   </div>
</div>
</form>
</article>
<footer>
<%@ include file="foot.jsp" %>
</footer>
</body>
</html>