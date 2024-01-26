
package bean;

import java.sql.*;

public class ConnectionProvider {
	private static final String DRIVER = null;
	private static final String CONNECTION_URL = null;
	private static final String USERNAME = null;
	private static final String PASSWORD = null;
	private static Connection con = null;
	static {
		try {
			Class.forName(DRIVER);
			con = DriverManager.getConnection(CONNECTION_URL, USERNAME, PASSWORD);
		} catch (Exception e) {
		}
	}

	public static Connection getCon() {
		Connection con = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/mydb?useUnicode=true&characterEncoding=UTF-8&zeroDateTimeBehavior=CONVERT_TO_NULL&serverTimezone=GMT",
					"root", "salinipramod");

		} catch (Exception e) {
			System.out.println("Conn Error: " + e.getMessage());
		}
		return con;
	}

}
