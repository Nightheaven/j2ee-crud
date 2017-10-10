import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request,HttpServletResponse response)
		throws ServletException, IOException{
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		
		//System.out.println("name"+name);
		//System.out.println("password"+password);
		
		//response.getWriter().println(name);
		//response.getWriter().println(password);
		
		if("admin".equals(name)&&"123".equals(password)){
			request.getSession().setAttribute("useName", name);
			response.sendRedirect("listHero");
			
		}else{
			response.sendRedirect("fail.html");
		}
		
	}
}
