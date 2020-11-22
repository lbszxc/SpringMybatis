import entities.Dept;
import entities.User;
import mapper.DeptMapper;
import mapper.UserMapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

/**
 * @author Administrator
 * @date 2020/5/14 10:28
 * @description
 **/
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext.xml")
public class MybatisTest {
    @Autowired
    private DeptMapper deptMapper;
    @Autowired
    private UserMapper userMapper;

    @Test
    public void testAdd() {
        Dept dept = new Dept();
        dept.setDname("修理部");
        deptMapper.add(dept);
    }

    @Test
    public void testList(){
        List<Dept> depts = deptMapper.list();
        for (Dept d:depts){
            System.out.println("部门："+d.getDname()+"\t地址："+d.getLoc());
        }
    }

    @Test
    public void testUser(){
        User user = new User();
        user.setUname("admin");
        user.setUpwd("123456");
        User u = userMapper.getUser(user);
        System.out.println(u);
    }
    @Autowired
    private DataSource dataSource;
    @Test
    public void testConnection() throws SQLException {
        Connection connection = dataSource.getConnection();
        System.out.println(connection);
    }
}
