package home;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.BeanClass;

@SuppressWarnings({ "serial", "unused" })
@WebServlet("/ServletHome")
public class HomeServlet extends HttpServlet {

   
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
	{
	
		PrintWriter pw = res.getWriter();
		res.setContentType("text/html");
		
		String department = req.getParameter("department");
		String branch = req.getParameter("branch");
		String semester = req.getParameter("semester");
		String rollno = req.getParameter("rollno");
		
		
		BeanClass bean = new HomeDAO().retrieveMarksheet(req);
		
		if(bean==null)
		{
			pw.print("<script>alert('Invalid Details !');</script>");
			RequestDispatcher rd = req.getRequestDispatcher("home.html");
			rd.include(req, res);
		}
		else {
			req.setAttribute("BeanClass", bean);
			RequestDispatcher rd = req.getRequestDispatcher("marksheet.jsp");
			rd.include(req, res);
	
		}
		
		
	
	
	}


}
