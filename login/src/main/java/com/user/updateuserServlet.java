package com.user;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class updateuserServlet
 */
@WebServlet("/updateuserServlet")
public class updateuserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String id = request.getParameter("userid");
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String mobileno = request.getParameter("mobileno");
		String birthday = request.getParameter("birthday");
		String gender = request.getParameter("gender");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		
		boolean isTrue;
		
		isTrue = userDButil.updateuser(id, fname, lname, email, address, mobileno, birthday, gender, username, password);
		
		if(isTrue == true) {
			
			List<user> userDetails = userDButil.getuserDetails(id);
			request.setAttribute("userDetails", userDetails);
			
		     RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
		     dis.forward(request, response);
		}
		else {
			
			List<user> userDetails = userDButil.getuserDetails(id);
			request.setAttribute("userDetails", userDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
			dis.forward(request, response);
		}
	}

}
