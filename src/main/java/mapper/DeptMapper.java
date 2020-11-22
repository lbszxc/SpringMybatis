package mapper;

import entities.Dept;

import java.util.List;

/**
 * @author Administrator
 * @date 2020/5/14 9:29
 * @description
 **/
public interface DeptMapper {
    public void add(Dept dept);
    public void delete(int dno);
    public Dept get(int dno);
    public void update(Dept dept);
    public List<Dept> list();
}
