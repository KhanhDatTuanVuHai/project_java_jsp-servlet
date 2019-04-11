package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class MyConnectDB {
		public static String sqlDB;
		
		public MyConnectDB() {
			super();
			//sqlDB = "jdbc:sqlserver://shopphone.database.windows.net:1433;database=sqlshop;user=admin0107@shopphone;password=ABCDabcd0107;encrypt=true;trustServerCertificate=false;hostNameInCertificate=*.database.windows.net;loginTimeout=30";
			sqlDB="jdbc:sqlserver://localhost:1433;databaseName=sqlshop;user=sa;password=123";
		}
		
		public static  Connection connect() throws Exception{
			try {
				Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
				Connection connect = DriverManager.getConnection(sqlDB);
				return connect;
			} catch (Exception e) {
				System.out.println(e.getMessage());
			}
			return null;
		}
		public  void thucThiSQL(String sql) throws Exception{
			Connection connect =connect();
			Statement stmt = connect.createStatement();
			stmt.executeUpdate(sql);
		}
		public ResultSet chonDuLieu(String sql) throws Exception{
			Connection connect =connect();
			Statement stmt = connect.createStatement();
			ResultSet rs=	stmt.executeQuery(sql);
			return rs;
		}
		
	
		public PreparedStatement dungStament(String sql) throws SQLException, Exception{
			return connect().prepareStatement(sql);
		}
		public void thucThiCauLenhSQL(String sql) throws Exception{
			Connection connect =connect();
			Statement stmt = connect.createStatement();
			stmt.executeUpdate(sql);
		}
		public ResultSet chonDuLieuTuDTB(String sql) throws Exception{
			Connection connect = connect();
			Statement stmt = connect.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			return rs;
		}
		
	public static void main(String[] args) throws Exception {
		System.out.println(new MyConnectDB().connect());
	}
}
