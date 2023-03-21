package bj.highfive.usermanagement.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import bj.highfive.usermanagement.bean.Employee;

public class EmployeeDAO {
	public static Connection getConnection() {
		Connection con = null;
		try {
			// 1- Registering the driver
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/userdb", "root", "");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;
	}

	public static List<Employee> getRecords(int start, int total) {
		List<Employee> list = new ArrayList<Employee>();
		try {
			// 2- Getting the connection object
			Connection con = getConnection();
			// 3- Preparing the request
			PreparedStatement ps = con.prepareStatement("SELECT * FROM emp LIMIT " + (start - 1) + ", " + total);
			// 4- Executing the request
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Employee e = new Employee();
				e.setId(rs.getInt(1));
				e.setName(rs.getString(2));
				e.setSalary(rs.getFloat(3));

				list.add(e);
			}
			// 5- Closing the request
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
}
