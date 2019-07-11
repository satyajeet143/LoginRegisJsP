
package DBC;

import java.sql.*;
public class Dbconnection {
    public static Connection getConnection(){
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jspdemo","root","");
           return con;
            
        }
        catch(Exception ex)
        {
            System.out.println(ex.getMessage());
            return null;
        }
    }
            
           
}
