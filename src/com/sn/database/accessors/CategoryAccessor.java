package com.sn.database.accessors;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.sn.database.objects.Category;
import com.sn.database.objects.Source;
import com.sn.database.objects.User;
import com.sn.database.utilities.ConnectionPool;
import com.sn.database.utilities.DbConstants;
import com.sn.database.utilities.DbUtil;

public class CategoryAccessor {

	Connection connection;
	
	private PreparedStatement _insertCategory;
	private PreparedStatement _selectCategory;
	private PreparedStatement _insertCategoryForUser;
	
	
	public CategoryAccessor(Connection connection) {
		this.connection = connection;
	}
	
/**************************************/	

	public void insertCategory(Category category) throws SQLException {
		try {
			_insertCategory = getInsertStatement();
			_insertCategory.setInt(0, category.getCategoryId());
			_insertCategory.setString(1, category.getCategory());

			
			_insertCategory.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			_insertCategory.close();
		}
	}
	
	private PreparedStatement getInsertStatement() throws SQLException {
		StringBuilder sb = new StringBuilder();
		sb.append("INSERT INTO ");
		sb.append(DbConstants.CATEGORY_TABLE);
		sb.append(" ( ");
		sb.append(DbConstants.CATEGORY_COL_CATEGORYID);
		sb.append(", ");
		sb.append(DbConstants.CATEGORY_COL_CATEGORYDESCRIPTION);
		sb.append(" ) ");
		sb.append("VALUES ( ?, ? ); ");
		
		_insertCategory = connection.prepareStatement(sb.toString());
		return _insertCategory;
	}
	
	
/**************************************/	

	public List<Category> selectCategory() {
		ConnectionPool pool = ConnectionPool.getInstance();
		Connection connection = pool.getConnection();
		
		PreparedStatement ps = null;
		ResultSet rs = null;
		StringBuilder sb = new StringBuilder();
		ArrayList<Category> categories = new ArrayList<Category>();
		
		
		try {
			_selectCategory = getCategoryStatement();
			rs = _selectCategory.executeQuery();
			
			while(rs.next()) {
				categories.add(asCategory(rs));
			}
			return categories;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			cleanup(_selectCategory, rs);
			pool.freeConnection(connection);
		}
		return null;
	}
	
	private Category asCategory(ResultSet rs) throws SQLException {
		Category category = new Category();
		category.setCategoryId(Integer.parseInt(rs.getString(DbConstants.CATEGORY_COL_CATEGORYID)));
		category.setCategory(rs.getString(DbConstants.CATEGORY_COL_CATEGORYDESCRIPTION));
		return category;
	}
	
	private PreparedStatement getCategoryStatement() throws SQLException {
		StringBuilder sb = new StringBuilder();
		sb.append("SELECT * FROM ");
		sb.append(DbConstants.CATEGORY_TABLE);
		_selectCategory = connection.prepareStatement(sb.toString());
		return _selectCategory;
	}
	
/**************************************/	

	public void insertUserCategory(Category category,User user) throws SQLException {
		try {
			_insertCategory = getInsertUserCategoryStatement();
			_insertCategory.setInt(0, category.getCategoryId());
			_insertCategory.setString(1, category.getCategory());

			
			_insertCategory.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			_insertCategory.close();
		}
	}

	
	
	private PreparedStatement getInsertUserCategoryStatement() throws SQLException {
		StringBuilder sb = new StringBuilder();
		sb.append("INSERT INTO ");
		sb.append(DbConstants.USER_PREFERENCE_TABLE);
		sb.append(" ( ");
		sb.append(DbConstants.USER_PREFERENCE_COL_USERID);
		sb.append(", ");
		sb.append(DbConstants.USER_PREFERENCE_COL_CATEGORYID);
		sb.append(" ) ");
		sb.append("VALUES ( ?, ? ); ");
		
		_insertCategory = connection.prepareStatement(sb.toString());
		return _insertCategory;
	}
	
	private void cleanup(PreparedStatement ps, ResultSet rs) {
		if(ps != null) {
			DbUtil.closePreparedStatement(ps);
		}
		if(rs != null) {
			DbUtil.closeResultSet(rs);
		}
	}

	
}
