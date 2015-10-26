package com.pro.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pro.domain.Compu;
import com.pro.service.CompuService;
import com.pro.service.CompuServiceImpl;

public class CompuServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String method=request.getParameter("flag");
		if("jia".equals(method)){
			jia(request,response);
		}else if("jian".equals(method)){
			jian(request,response);
		}
		
	}

	private void jian(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	}

	private void jia(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		//1
		String n1 = request.getParameter("n1");
		String n2 = request.getParameter("n2");
		
		Compu compu=new Compu();
		compu.setN1(Double.parseDouble(n1));
		compu.setN2(Double.parseDouble(n2));
		
		//2
		CompuService compuService=new CompuServiceImpl();
		double result = compuService.jia(compu);
		request.setAttribute("result", result);
		//
		request.getRequestDispatcher("index.jsp").forward(request, response);
		
	}

}
