package controller;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.KhachHang;

@WebServlet("/DangNhap")
public class DangNhap extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public DangNhap() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String user = request.getParameter("username");
		String pass = request.getParameter("pass");
		String name = request.getParameter("name");
		
		if(user.equals("admin") && pass.equals("abcd")){
			HttpSession session = request.getSession();
			session.setAttribute("khachHang", new KhachHang(user,pass,name));
			response.sendRedirect("index.jsp");
		}else{
			ServletContext contextError = getServletContext();
			contextError.setAttribute("error", "Bạn đã nhập sai thông tin");
			response.sendRedirect("DangNhap.jsp");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
