/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kunwarprabin.jdbcui.dao;

import com.kunwarprabin.jdbcui.entity.Student;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author OWNER
 */
public interface StudentDAO {
    int insert(Student s)throws ClassNotFoundException,SQLException;
    List<Student> getAll()throws ClassNotFoundException,SQLException;
    int delete(int id)throws ClassNotFoundException,SQLException;
    int update(int id, Student student)throws ClassNotFoundException,SQLException;
    
}
