<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"   import="java.sql.*, java.util.*" %>
<%! 
  Connection con;
  private boolean createUser(String username, String password, String UN){
	  
	  try{
		  String sql= "insert into mydba values (?,?,?)";
		  PreparedStatement ps = con.prepareStatement(sql);
		  
		  ps.setString(1, UN);
		  ps.setString(2, username);
		  ps.setString(3, password);
		  int result = ps.executeUpdate();
		  if(result>0){
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
  String UN = request.getParameter("unique number");
  
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
  
  boolean authflag = createUser(username,password, UN);
  
  if(authflag){
	  response.sendRedirect("login.jsp");
  }else{
	  response.sendRedirect("error.jsp");
  }
  
 %>