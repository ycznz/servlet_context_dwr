package com.pro.util;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class MyServletContextListener implements ServletContextListener {

	public void contextDestroyed(ServletContextEvent sce) {

	}

	public void contextInitialized(ServletContextEvent sce) {
		String parameter = sce.getServletContext().getInitParameter("t80");
		System.out.println("============"+parameter);
	}

}
