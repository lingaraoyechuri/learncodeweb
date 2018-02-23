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
<div class="Row">
<div class="jombotron">
  <h1 class = "text-center"> Enter to Learn and exit to earn..</h1>
  <p class = "text-center"> our expertise empower you to achieve your goals and achieve success</p>
</div>

<div class="row">
<center>
    <form class="form-inline" action="findcourse.jsp">
    <div class="form-group">
    <label class="control-label">__search course</label>
    <input type="search" class="form-control" name ="course name" placeholder="enter course tilte">
    <input type="submit" class="btn btn-primary" value="search"	>
    </div>
    </form>
</center> 
</div>  

<br/>
<p class="text-center"><a href="courses.jsp" class="btn btn-lg btn-success"> view all courses</a></p>
</div>
<div class= "row">
 <p> __New user: <a href="Register.jsp" >Register  here</a></p>
 </div>
 <div class= "row">
 <p> __Existing user: <a href="login.jsp" >login here</a></p>
 </div>
 
</article>
<footer>
<%@ include file= "foot.jsp" %>
</footer>
</body>
</html>