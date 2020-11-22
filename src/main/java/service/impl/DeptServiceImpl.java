package service.impl;

import entities.Dept;
import mapper.DeptMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.DeptService;

import java.util.List;

/**
 * @author Administrator
 * @date 2020/5/16 16:03
 * @description
 **/
@Service
public class DeptServiceImpl implements DeptService {
    @Autowired
    private DeptMapper deptMapper;
    @Override
    public List<Dept> list() {
        return deptMapper.list();
    }

    @Override
    public void add(Dept dept) {
        deptMapper.add(dept);
    }

    @Override
    public void delete(int dno) {
        deptMapper.delete(dno);
    }

    @Override
    public Dept get(int dno) {
        return deptMapper.get(dno);
    }

    @Override
    public void update(Dept dept) {
        deptMapper.update(dept);
    }
}
