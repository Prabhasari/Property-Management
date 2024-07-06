package com.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class userInsert
 */
@WebServlet("/userInsert")
public class userInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String FirstName = request.getParameter("fid");
		String LastName = request.getParameter("lid");
		String email = request.getParameter("email");
		String Address = request.getParameter("address");
		String MobileNo = request.getParameter("number");
		String Birthday = request.getParameter("birth");
		String Gender = request.getParameter("gender");
		String username = request.getParameter("username");
		String password = request.getParameter("pass");
		
		boolean isTrue;
		
		isTrue = userDButil.insertUser(FirstName, LastName, email, Address, MobileNo, Birthday, Gender, username, password);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
		
	}

}
