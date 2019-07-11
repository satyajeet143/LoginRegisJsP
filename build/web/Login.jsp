<%@page import="DBC.Dbconnection"%>
<%@page import="java.sql.*"  %>
<%
    if(request.getParameter("btnSubmit")!=null)
    {
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        try
        {
            Connection con=Dbconnection.getConnection();
            Statement s=con.createStatement();
            ResultSet rs=s.executeQuery("select username,password from regis where username='"+username+"'");
            if(rs.next())
            {
                if(rs.getString(2).equals(password))
                {
                    out.println("Login Success");
                }
                else
                {
                    out.println("Enter valid details");
                }
            }
            
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
        <title>Login Page</title>
    </head>
    <form method="post">
        <input type="text" name="username" placeholder="User Name"><br><br>
        <input type="password" name="password" placeholder="Enter Password"><br><br>
        <input type="submit" name="btnSubmit" value="Login">
        
        
    </form>
    <body>
        
    </body>
</html>
