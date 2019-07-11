<%@page import="DBC.Dbconnection"%>
<%@page import="java.sql.*" %>
<%
  if(request.getParameter("btnSubmit")!=null)
  {
      String username=request.getParameter("username");
      String password=request.getParameter("password");
      String firstname=request.getParameter("firstname");
      String lastname=request.getParameter("lastname");
      session.setAttribute("fname", firstname);
      session.setAttribute("lname", lastname);
      try
      {
          Connection con=Dbconnection.getConnection();
          Statement s=con.createStatement();
          String str="insert into regis(username,password,firstname,lastname)values('"+username+"','"+password+"','"+firstname+"','"+lastname+"')";
          s.executeUpdate(str);
          response.sendRedirect("index.jsp");
          out.println("Regis.....");
          
          
      }
      catch(Exception ex)
      {
         out.println(ex.getMessage()); 
      }
  }

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="post">
            <input type="text" name="username" placeholder="Enter User name" required><br><br>
            <input type="password" name="password" placeholder="Enter Password" required><br><br>
            <input type="text" name="firstname" placeholder="Enter First Name" required><br><br>
            <input type="text" name="lastname" placeholder="Enter Last Name" required><br><br>
            <input type="submit" name="btnSubmit" value="Regiter">
            <input type="button"  onClick="location.href='Login.jsp'" value="Login">
            
            
        </form> 
    </body>
</html>
