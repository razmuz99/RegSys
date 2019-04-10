package Servlets;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "createUserServlet")
public class createUserServlet extends HttpServlet {

    private Connection createConnection() throws SQLException {
        return  DriverManager.getConnection("jdbc:mysql://ec2-52-30-211-3.eu-west-1.compute.amazonaws.com/s185101?"
                + "user=s185101&password=ocWobhGa6mSep6MBVqBa1");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try(Connection c = createConnection()){
            PreparedStatement statement = c.prepareStatement("INSERT INTO webUsers (Username,Pwd) VALUES (?,?)");
            statement.setString(1,request.getParameter("username"));
            statement.setString(2,request.getParameter("password"));
            statement.executeUpdate();



        }catch(SQLException e){
            System.out.println(e);
        }


        response.sendRedirect(request.getHeader("referer"));
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
