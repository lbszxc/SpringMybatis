package controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import entities.Dept;
import entities.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import service.DeptService;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @author Administrator
 * @date 2020/5/16 16:10
 * @description
 **/
@Controller
@RequestMapping("/dept")
public class DeptController {
    @Autowired
    private DeptService deptService;

    @RequestMapping(value = "back")
    public ModelAndView backDate(){
        ModelAndView mav = new ModelAndView("redirect:/dept/list");
        return mav;
    }
    @RequestMapping(value = "list")
    public ModelAndView listDept(@RequestParam(value = "page",defaultValue = "1") Integer page, Model model, HttpSession session){
        ModelAndView mav = new ModelAndView();
        User user = (User) session.getAttribute("user");
        if (user!=null){
            PageHelper.startPage(page,4);
            List<Dept> depts = deptService.list();
            PageInfo pageInfo = new PageInfo(depts,4);
            model.addAttribute("pageInfo",pageInfo);
            mav.addObject("depts",depts);
            mav.setViewName("main");
        }
        return mav;
    }
    @RequestMapping(value = "get")
    public ModelAndView getDept(int dno){
        Dept dept = deptService.get(dno);
        deptService.get(dno);
        ModelAndView mav = new ModelAndView("detail");
        mav.addObject("dept",dept);
        return mav;
    }
    @RequestMapping(value = "addgo")
    public ModelAndView addgo(){
        ModelAndView mav = new ModelAndView("add");
        return mav;
    }
    @RequestMapping(value = "add")
    public ModelAndView addDept(Dept dept){
        deptService.add(dept);
        ModelAndView mav = new ModelAndView("redirect:/dept/list");
        return mav;
    }

    @RequestMapping(value = "delete")
    public ModelAndView deleteDept(int dno){
        deptService.delete(dno);
        ModelAndView mav = new ModelAndView("redirect:/dept/list");
        return mav;
    }
    @RequestMapping(value = "editgo")
    public ModelAndView editgo(Dept dept){
        Dept d = deptService.get(dept.getDno());
        ModelAndView mav = new ModelAndView("edit");
        mav.addObject("d",d);
        return mav;
    }
    @RequestMapping(value = "update")
    public ModelAndView updateDept(Dept dept){
        deptService.update(dept);
        ModelAndView mav = new ModelAndView("redirect:/dept/list");
        return mav;
    }
}
