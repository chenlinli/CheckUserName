package com.cl.dao;

import java.sql.SQLException;

public interface UserDAo {

	/**
	 * ����û����Ƿ����
	 * @param username
	 * @return
	 */
	boolean checkUserName(String username) throws SQLException;
}
