package com.cl.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cl.dao.UserDAo;
import com.cl.dao.impl.UserDaoImpl;

/**
 * Servlet implementation class CheckUserNameServlet
 */
@WebServlet("/CheckUserNameServlet")
public class CheckUserNameServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserDAo userdao= new UserDaoImpl();
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");
		System.out.println(name);
		try {
			boolean isExist = userdao.checkUserName(name);
			if(isExist){
				response.getWriter().println(1);
			}else{
				response.getWriter().println(0);
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
