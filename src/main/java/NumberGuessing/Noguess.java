package NumberGuessing;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class Noguess extends HttpServlet {
	
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int userNo=Integer.parseInt(req.getParameter("userno"));
		// int randomNo=Integer.parseInt(req.getParameter("myNo"));
		//System.out.println("RSSB"+userNo+" rssb2: "+randomno);
		
		PrintWriter pw=resp.getWriter();
		pw.write("user no is : "+userNo);
	    // pw.write("random no is : "+randomNo);
		
	}

}
