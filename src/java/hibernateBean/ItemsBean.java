/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hibernateBean;

import hibernate.Dao.ItemsDao;
import hibernate.Entity.Items;
import java.util.ArrayList;
import javax.faces.bean.*;

@ManagedBean(name="itemsBean")
@SessionScoped
public class ItemsBean {
    
    ItemsDao dao = new ItemsDao();
    
    int id;
    String name;
    double price;
    int quantity;

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public ItemsBean() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
    
    
    
    
    public ArrayList<Items> getProduct(){
        
        return dao.getAllProducts();
        
        
    }
    
    int pre=0;
    
    public String createProduct(){
       int newqn=0;
        if(pre>0){
            newqn=pre-getQuantity();
        }else{
            newqn = getQuantity();
        }
        Items p = new Items(name,price,newqn);
        if(id==0){
            p.setId(null);
        }else{
            p.setId(id);
        }
        dao.createUpdate(p);
       
        return "index.jsp";
        
    }
    
    public String deleteById(int id){
        
        dao.delete(id);
        return "index.jsp";
        
    }
    
    public String updateLink(Items p){
        pre= p.getQuantity();
        setId(p.getId());
        setName(p.getName());
        setPrice(p.getPrice());
        setQuantity(p.getQuantity());
        
        return "addItem.jsp";
    }
    
    
    
}
