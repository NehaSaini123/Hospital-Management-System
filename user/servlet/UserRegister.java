package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.Userdao;
import com.db.DbConnect;
import com.entity.User;

import jakarta.servlet.annotation.WebServlet;

@WebServlet("/user_register")
public class UserRegister extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String fullName = req.getParameter("fullname");
			String emails = req.getParameter("email");
			String passwords = req.getParameter("password");

			User u = new User(fullName, emails, passwords);

			Userdao dao = new Userdao(DbConnect.getConn());

			HttpSession session = req.getSession();

			boolean f = dao.register(u);

			if (f) {

				session.setAttribute("sucMsg", "Register Successfully");
				resp.sendRedirect("signup.jsp");

			} else {
				session.setAttribute("errorMsg", "Something wrong on Server");
				resp.sendRedirect("signup.jsp");

			}
		} catch (Exception e) {

			e.printStackTrace();

		}

	}

}
