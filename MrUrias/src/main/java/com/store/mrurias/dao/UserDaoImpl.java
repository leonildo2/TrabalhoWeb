package com.store.mrurias.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;

import com.store.mrurias.model.User;

import javax.transaction.Transactional;

@Repository
public class UserDaoImpl implements UserDao
{

  @Autowired
  private SessionFactory sessionFactory;

  public UserDaoImpl()
  {
  }

  public UserDaoImpl(SessionFactory sessionFactory)
  {
    this.sessionFactory = sessionFactory;
  }

  @Override
  @Transactional
  public
  User
  findById(Integer id)
  {
    String sql = "SELECT * FROM users WHERE id=:id";
    List<User> res = sessionFactory.getCurrentSession().createSQLQuery(sql).list();
    return res.get(0);
  }

  @Override
  @Transactional
  public
  List<User>
  findAll()
  {
    String sql = "SELECT * FROM users";
    List<User> res = sessionFactory.getCurrentSession().createSQLQuery(sql).list();
    return res;
  }

  @Override
  @Transactional
  public
  void
  save(User user)
  {
    sessionFactory.getCurrentSession().saveOrUpdate(user);
  }

  @Override
  @Transactional
  public
  void
  update(User user)
  {
    String sql = "UPDATE USERS SET NAME=:name, EMAIL=:email, PASSWORD=:password " + ", WHERE " +
     "id=:id";
    sessionFactory.getCurrentSession().createSQLQuery(sql);
  }

  @Override
  @Transactional
  public
  void
  delete(Integer id)
  {
    String sql = "DELETE FROM USERS WHERE id= :id";
    sessionFactory.getCurrentSession().createSQLQuery(sql);
  }


  private static final class UserMapper implements RowMapper<User>
  {
    public User mapRow(ResultSet rs, int rowNum) throws SQLException
    {
      User user = new User();
      user.setId(rs.getInt("id"));
      user.setName(rs.getString("name"));
      user.setEmail(rs.getString("email"));
      user.setPassword(rs.getInt("password"));
      return user;
    }
  }
}