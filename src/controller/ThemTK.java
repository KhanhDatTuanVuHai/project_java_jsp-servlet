package controller;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MyConnectDB;

/**
 * Servlet implementation class ThemTK
 */
@WebServlet("/ThemTK")
public class ThemTK extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public ThemTK() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ho =request.getParameter("ho");
		String ten =request.getParameter("ten");
		String tk =request.getParameter("tk");
		
		String stt="";
		try {
			ResultSet rs = new MyConnectDB().chonDuLieuTuDTB("select * from ThanhVien");
			while(rs.next()){
				String s = rs.getString(1);
				stt=Integer.parseInt(s)+1+"";
			}
			new MyConnectDB().thucThiCauLenhSQL("insert into ThanhVien values('"+stt+"','"+ho+"','"+ten+"','"+tk+"')");
			response.sendRedirect("index.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}

}
