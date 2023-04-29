package evaluatorlogin;

import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@SuppressWarnings("serial")
@WebServlet("/logout")
public class LogoutServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request ,HttpServletResponse response)
	{
		
		HttpSession hSession=request.getSession(false);
		
	try {
		PrintWriter pWriter=response.getWriter();
		
		
		if (hSession==null) {
			
			pWriter.print("<script>alert('sorry session expired...!');</script>");
			
		}
		else 
		{
			hSession.removeAttribute("msg");
			hSession.invalidate();
			
			pWriter.print("<script>alert('logout Sucessfully!');</script>");
			
			
		}
		RequestDispatcher rDispatcher=request.getRequestDispatcher("home.html");
		rDispatcher.include(request, response);
		
		
		
	} catch (Exception e) {
		e.printStackTrace();
	}
		
		
	}

}
