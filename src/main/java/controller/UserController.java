package controller;

import entities.Dept;
import entities.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import service.DeptService;
import service.UserService;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @author Administrator
 * @date 2020/5/16 11:18
 * @description
 **/
@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public String login(HttpSession session,String uname,String upwd){
        User u = new User();
        u.setUname(uname);
        u.setUpwd(upwd);
        User user = null;

        try {
            user=userService.login(u);
            if (user!=null){
                session.setAttribute("user",user);
                return "forward:/dept/list";
            }else {
                return "redirect:/error.jsp";
            }
        } catch (Exception e) {
            e.printStackTrace();
            return "redirect:/error.jsp";
        }
    }
}
