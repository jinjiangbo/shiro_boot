package com.baizhi.controller;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("user")
public class UserController {
    @RequestMapping("login")
    public String login(String username,String password){
        UsernamePasswordToken token = new UsernamePasswordToken(username, password);
        Subject subject = SecurityUtils.getSubject();
        try {
            subject.login(token);
            return "index";
        }catch (IncorrectCredentialsException e){
            System.out.println("密码错误！");
            return "redirect:/user/login.jsp";
        }catch (UnknownAccountException e){
            System.out.println("账号错误！");
            return "redirect:/user/login.jsp";
        }
    }
}
