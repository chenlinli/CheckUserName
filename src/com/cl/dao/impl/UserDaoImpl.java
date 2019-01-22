package com.cl.dao.impl;

import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import com.cl.dao.UserDAo;
import com.cl.utils.JDBCUtils;



public class UserDaoImpl implements UserDAo {

	@Override
	public boolean checkUserName(String username) throws SQLException {
		QueryRunner query = new QueryRunner(JDBCUtils.getDataSource());
		long result = (long) query.query("select count(*) from user where name=?", new ScalarHandler(),username);
		return result>0 ;
	}

}
