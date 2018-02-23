<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"   import="java.sql.*, java.util.*" %>
<%! 
  Connection con;
  private boolean isvaliduser(String username, String password){
	  
	  try{
		  String sql= "select * from mydba where username=? and password=?";
		  PreparedStatement ps = con.prepareStatement(sql);
		  
		  ps.setString(1, username);
		  ps.setString(2, password);
		  ResultSet rs = ps.executeQuery();
		  if(rs.next()){
			  return true;
		  }
		}catch(Exception ex){
			ex.printStackTrace();
		}
	  
	  return false;
  }
%>

<% 
  String username = request.getParameter("user name");
  String password = request.getParameter("password");
 
  
  String driverClass = application.getInitParameter("dbDriver");
  String Url = application.getInitParameter("dbUrl");

  String dbusername = application.getInitParameter("dbUser");
  String dbpassword = application.getInitParameter("dbPwd");
  
  try{
	  
	 Class.forName(driverClass);
  }
  catch(Exception ex){  
	  
	  ex.printStackTrace();  
  }
  
  con = DriverManager.getConnection(Url,dbusername,dbpassword);
  
  application.setAttribute("Connection",con);
  
  boolean authflag = isvaliduser(username,password);
  
  if(authflag){
	  session.setAttribute("mydba", username );
	  response.sendRedirect("courses.jsp");
  }else{
	  response.sendRedirect("error.jsp");
  }
  
 %>