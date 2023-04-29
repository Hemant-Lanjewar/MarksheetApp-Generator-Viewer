package home;

import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@SuppressWarnings("serial")
@WebServlet("/back")
public class BacktoHomeServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request ,HttpServletResponse response)
	{
		
		try {
			
			RequestDispatcher rDispatcher=request.getRequestDispatcher("addmarksheet.html");
			rDispatcher.include(request, response);
		
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}

}
