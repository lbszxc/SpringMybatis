package service;

import entities.Dept;

import java.util.List;

/**
 * @author Administrator
 * @date 2020/5/16 11:15
 * @description
 **/
public interface DeptService {
    public List<Dept> list();
    public void add(Dept dept);
    public void delete(int dno);
    public Dept get(int dno);
    public void update(Dept dept);
}
