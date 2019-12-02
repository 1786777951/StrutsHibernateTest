package main.action;

import main.bean.Product;
import main.dao.ProductDAO;

import java.util.List;

public class ProductAction {
    ProductDAO pd = new ProductDAO();
    Product product;
    List<Product> products;

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public List<Product> getProducts() {
        return products;
    }

    public void setProducts(List<Product> products) {
        this.products = products;
    }

    public String add(){
        pd.add(product);
        return "list";
    }
    public String edit(){
        product = pd.get(product.getId());
        return "edit";
    }
    public String delete(){
        pd.delete(product.getId());
        return "list";
    }
    public String update(){
        pd.update(product);
        return "list";
    }
    public String list(){
        products = pd.listProduct();
        return "listJsp";
    }
}
