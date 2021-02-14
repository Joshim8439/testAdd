/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hibernate.Dao;

import hibernate.Entity.Items;
import java.util.ArrayList;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class ItemsDao {
   
    public ArrayList<Items> getAllProducts(){
        Session s = HibernateUtil.getSessionFactory().openSession();
        
        return (ArrayList<Items>)s.createCriteria(Items.class).list();
    }
    
    public void createUpdate(Items p){
        
        Session s = HibernateUtil.getSessionFactory().openSession();
        Transaction t = s.beginTransaction();
        s.saveOrUpdate(p);
        t.commit();
        s.close();
        
    }
    
    public void delete(int id){
        
        Session s = HibernateUtil.getSessionFactory().openSession();
        Transaction t = s.beginTransaction();
        Items p = new Items();
        p.setId(id);
        s.delete(p);
        t.commit();
        s.close();
    }
    
}
