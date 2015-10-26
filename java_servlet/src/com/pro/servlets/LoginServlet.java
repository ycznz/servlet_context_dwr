package com.pro.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pro.domain.Users;

public class LoginServlet extends HttpServlet{

	
	public LoginServlet() {
		System.out.println("---LoginServlet----");
	}

	@Override
	public void destroy() {
		System.out.println("---destroy----");
	}

	@Override
	public void init() throws ServletException {
		System.out.println("---init----");
		String initParameter = this.getInitParameter("encoding");
		System.out.println(initParameter);
		String string = this.getServletContext().getInitParameter("t80");
		System.out.println(string);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("---doPost----");
		//1
		String userName=request.getParameter("userName");
		String password=request.getParameter("password");
		
		Users user=new Users();
		user.setUserName(userName);
		user.setPassword(password);
		
		//2
//		UserService userService=new UserServiceImpl();
//		userService.saveUser(user);
		String path="login.jsp";
		if("aaa".equals(user.getUserName())&&"aaa".equals(user.getPassword())){
			path="index.jsp";
		}
		
		//3
		response.sendRedirect(path);
	}	
	
}
