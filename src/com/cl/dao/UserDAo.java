package com.cl.dao;

import java.sql.SQLException;

public interface UserDAo {

	/**
	 * 检测用户名是否存在
	 * @param username
	 * @return
	 */
	boolean checkUserName(String username) throws SQLException;
}
