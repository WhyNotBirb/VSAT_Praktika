import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name ="default", urlPatterns ="/default" )
public class servletExample extends HttpServlet {

    public String test="hello my name is...";

protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {


    request.setAttribute("test", test);



        RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
        dispatcher.include(request, response);






}
}
