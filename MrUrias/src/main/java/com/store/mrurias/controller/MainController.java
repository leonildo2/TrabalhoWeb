package com.store.mrurias.controller;

import java.util.Map;

import com.store.mrurias.dao.UserDao;
import com.store.mrurias.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController
{
  private User user;

  @Autowired
  UserDao userDao;

  @RequestMapping(value = "/", method = RequestMethod.GET)
  public String index(Model model)
  {

    model.addAttribute("userform", new String());
    return "index";
  }

  @RequestMapping(value = "/user/add", method = RequestMethod.GET)
  public String useradd(Model model)
  {
    model.addAttribute("lolmen", new User());
    return "users/userform";
  }
  @RequestMapping(value = "user/shop", method = RequestMethod.GET)
  public String shop(Model model){

    return "shop";
  }
  @RequestMapping(value = "/user/add", method = RequestMethod.POST)
  public
  ModelAndView
  useradd(@ModelAttribute("lolmen") User lolmen)
  {
    this.user = lolmen;
    userDao.save(user);
    return new ModelAndView("redirect:/");
  }
  @RequestMapping(value = "/user/pesquisa", method = RequestMethod.POST)
  public ModelAndView pesquisa(@ModelAttribute("pesquisastr") String pesquisastr,
                               Model model){
    ModelAndView res = new ModelAndView("searchres");

    //requisição para o banco

    //res.addObject("nomeVariavelPARModelView", variavelEmSi);
    return res;
  }

  @RequestMapping(value = "/search", method = RequestMethod.POST)
  public ModelAndView hello(@PathVariable("name") String name)
  {
    return new  ModelAndView("redirect:/searchRes");
  }

  @RequestMapping(value = "searchRes", method = RequestMethod.GET)
  public ModelAndView searchRes(Model model)
  {
    return new ModelAndView("searchres");
  }
}
