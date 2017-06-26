package com.store.mrurias.config;

import com.store.mrurias.model.User;
import org.apache.commons.dbcp2.BasicDataSource;
import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import com.store.mrurias.dao.UserDao;
import com.store.mrurias.dao.UserDaoImpl;

import javax.sql.DataSource;
import java.util.Properties;

@Configuration
@ComponentScan("com.store.mrurias")
@EnableTransactionManagement
@EnableWebMvc
public class ApplicationContextConfig extends WebMvcConfigurerAdapter
{
  @Override
  public void addResourceHandlers(ResourceHandlerRegistry registry)
  {
    registry.addResourceHandler("/resources/**")
            .addResourceLocations("/resources/");
  }

  @Bean(name = "viewResolver")
  public InternalResourceViewResolver getViewResolver() {
    InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
    viewResolver.setPrefix("/WEB-INF/views/jsp/");
    viewResolver.setSuffix(".jsp");
    return viewResolver;
  }

  @Bean(name = "dataSource")
  public DataSource getDataSource()
  {
    BasicDataSource dataSource = new BasicDataSource();
    dataSource.setDriverClassName("com.mysql.jdbc.Driver");
    dataSource.setUrl("jdbc:mysql://localhost:3306/hcode_shop");
    dataSource.setUsername("root");
    dataSource.setPassword("");

    return dataSource;
  }

  private
  Properties
  getHibernateProperties()
  {
    Properties properties = new Properties();
    properties.put("hibernate.show_sql", "true");
    properties.put("hibernate.dialect", "org.hibernate.dialect.MySQLDialect");
    return properties;
  }

  @Autowired
  @Bean(name = "sessionFactory")
  public SessionFactory getSessionFactory(DataSource dataSource)
  {
    SessionFactory ses = null;
    try
    {
      LocalSessionFactoryBuilder sessionBuilder =
        new LocalSessionFactoryBuilder(dataSource);

      sessionBuilder.addProperties(getHibernateProperties());
      sessionBuilder.addAnnotatedClasses(User.class);

      ses = sessionBuilder.buildSessionFactory();

    }
    catch(HibernateException e)
    {
      System.out.println(e);
    }

    return ses;
  }

  @Autowired
  @Bean(name = "transactionManager")
  public
  HibernateTransactionManager
  getTransactionManager(SessionFactory sessionFactory)
  {
    HibernateTransactionManager transactionManager =
      new HibernateTransactionManager(sessionFactory);

    return transactionManager;
  }

  @Autowired
  @Bean(name = "userDao")
  public UserDao getUserDao(SessionFactory sessionFactory) {
    return new UserDaoImpl(sessionFactory);
  }
}
