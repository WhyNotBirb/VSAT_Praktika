import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/default")
public class servletExample extends HttpServlet {



protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {


    List rows = new ArrayList();




    for(int i = 1; i <=7; i++){

        List cols = new ArrayList();
        for(int j = 1; j <=7; j++){
            cols.add(String.valueOf(i* j));
        }
        //request.setAttribute("cols",cols);
        rows.add(cols);
    }
    request.setAttribute("rows", rows);

        RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
        dispatcher.include(request, response);






}
}
