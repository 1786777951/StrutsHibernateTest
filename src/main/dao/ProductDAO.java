package main.dao;


import main.bean.Product;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

import java.util.ArrayList;
import java.util.List;

public class ProductDAO {

    //添加
    public void add(Product p){
        SessionFactory sf = new Configuration().configure().buildSessionFactory();
        Session s = sf.openSession();

        s.beginTransaction();

        s.save(p);

        s.getTransaction().commit();
        s.close();
        sf.close();
    }

    //获取
    public Product get(int id){
        SessionFactory sf = new Configuration().configure().buildSessionFactory();
        Product product = null;
        Session s = sf.openSession();
        product = (Product) s.get(Product.class,id);
        s.close();
        sf.close();
        return product;
    }

    //删除
    public void delete(int id){
        SessionFactory sf = new Configuration().configure().buildSessionFactory();
        Session s = sf.openSession();
        s.beginTransaction();
        Product p = (Product) s.get(Product.class,id);
        s.delete(p);
        s.getTransaction().commit();
        s.close();
        sf.close();
    }

    //更新
    public void update(Product p){
        SessionFactory sf = new Configuration().configure().buildSessionFactory();
        Session s = sf.openSession();
        s.beginTransaction();

        s.update(p);

        s.getTransaction().commit();
        s.close();
        sf.close();

    }

    public List<Product> listProduct(){
        SessionFactory sf = new Configuration().configure().buildSessionFactory();
        List<Product> result = new ArrayList<>();
        Session s = sf.openSession();
        Query q = s.createQuery("from main.bean.Product p");
        result = q.list();
        System.out.println("-----------"+result);
        s.close();
        sf.close();
        return result;
    }
}
