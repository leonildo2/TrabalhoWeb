package com.store.mrurias.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="users")
public class User
{
  private Integer id;
  private String name;
  private String email;
  private Integer password;

  @Id
  @GeneratedValue
  @Column(name="userid")
  public Integer getId() {
		return id;
	}

  public void setId(Integer id) {
		this.id = id;
	}

  public String getName() {
		return name;
	}

  public void setName(String name) {
		this.name = name;
	}

  public String getEmail() {
		return email;
	}

  public void setEmail(String email) {
		this.email = email;
	}

  public Integer getPassword(){ return password;}

  public void setPassword(Integer password) { this.password = password;   }


  @Override
  public String toString()
  {
    return "User [id=" + id + ", name=" + name + ", email=" + email + ", password=" + password;
  }

}
