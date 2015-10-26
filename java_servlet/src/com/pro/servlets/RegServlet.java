package com.pro.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pro.domain.Users;

public class RegServlet extends HttpServlet{

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		String userName=request.getParameter("userName");	
		//修建铁路。
		PrintWriter writer = response.getWriter();

		String info="";
		if("aaa".equals(userName)){
			info="对不起。已有人注册。。";
		}else{
			info="可以注册，无人使用。。";
		}
		writer.write(info);
		writer.flush();
		writer.close();
		
	}	
	
}
