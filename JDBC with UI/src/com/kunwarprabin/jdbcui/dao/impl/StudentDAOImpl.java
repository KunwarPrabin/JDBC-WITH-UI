/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kunwarprabin.jdbcui.dao.impl;

import com.kunwarprabin.jdbcui.DButil.DBConnection;
import com.kunwarprabin.jdbcui.dao.StudentDAO;
import com.kunwarprabin.jdbcui.entity.Student;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author OWNER
 */
public class StudentDAOImpl implements StudentDAO {

    private DBConnection dbConn = new DBConnection();

    @Override
    public int insert(Student s) throws ClassNotFoundException, SQLException {
        dbConn.open();
        String sql = "INSERT INTO tbl_students(first_name,last_name,email)"
                + "VALUES(?,?,?)";
        PreparedStatement stmt = dbConn.initStatement(sql);
        stmt.setString(1, s.getFirstName());
        stmt.setString(2, s.getLastName());
        stmt.setString(3, s.getEmail());
       // stmt.setBoolean(4, s.isStatus());

        int result = dbConn.update();
        dbConn.close();
        System.out.println(result);
        return result;
    }

    @Override
    public List<Student> getAll() throws ClassNotFoundException, SQLException {
        List<Student> studentList = new ArrayList<>();
        dbConn.open();
        String sql = "SELECT * FROM tbl_students";
        dbConn.initStatement(sql);
        ResultSet rs = dbConn.query();
        while (rs.next()) {
            Student s = new Student();
            s.setId(rs.getInt("student_id"));
            s.setFirstName(rs.getString("first_name"));
            s.setLastName(rs.getString("last_name"));
            s.setEmail(rs.getString("email"));
            s.setAddedDate(rs.getDate("added_date"));
            s.setModifiedDate(rs.getDate("modified_date"));
           // s.setStatus(rs.getBoolean("status"));

            studentList.add(s);
        }
        dbConn.close();
        return studentList;
    }

    @Override
    public int delete(int id) throws ClassNotFoundException, SQLException {
        dbConn.open();
        String sql = "DELETE FROM tbl_students where student_id=?";
        PreparedStatement stmt = dbConn.initStatement(sql);
        stmt.setInt(1, id);

        int result = dbConn.update();
        dbConn.close();
        System.out.println(result);
        return result;
    }

   

   
    @Override
    public int update(int id, Student std) throws ClassNotFoundException, SQLException {
        dbConn.open();
        String sql = "UPDATE tbl_students set student_id=?, first_name =?,last_name=?,email=? where student_id=?";
        PreparedStatement stmt = dbConn.initStatement(sql); 
        
        
        stmt.setInt(1, std.getId());
        stmt.setString(2, std.getFirstName());
        stmt.setString(3, std.getLastName());
        stmt.setString(4, std.getEmail());
        stmt.setInt(5, id);
        
        int result = dbConn.update();
        dbConn.close();
        System.out.println(result);
        return result;
    }

}
