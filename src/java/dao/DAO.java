/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.Category;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author emsin
 */
public class DAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
 
    public List<Category> getAllCategories(){
        List<Category> list = new ArrayList<>();
        String query = "select * from Category"; //lay tu db ra
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while(rs.next()){
                //khoi tao doi tuong
                list.add(new Category(rs.getInt(1),
                                  rs.getString(2),
                                    rs.getString(3)
                                    ));
            }
            
        } catch (Exception e) {
        }
        return list;
    }
}
