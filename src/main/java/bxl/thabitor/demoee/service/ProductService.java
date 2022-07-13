package bxl.thabitor.demoee.service;

import bxl.thabitor.demoee.Exceptions.ProductNotFoundException;
import bxl.thabitor.demoee.models.Product;

import java.util.ArrayList;
import java.util.List;

public class ProductService {


    private static ProductService instance;
    public static ProductService getInstance(){
        System.out.println("recup de l'instance du service");
        return instance == null ? instance = new ProductService() : instance;
    }
    private final List<Product> list = new ArrayList<>();
    private int lastId;

    private ProductService() {
        list.add( new Product(1, "pomme", "pompom", "fruit", 1) );
        list.add( new Product(2, "sofa", "conforta", "meuble", 200) );
        list.add( new Product(3, "ecran 20\"", "platus", "ecran", 150) );
        this.lastId = 3;
    }

    public List<Product> getAll(){
        return new ArrayList<>(list);
    }

    public Product getOne(int id){
        return list.stream()
                .filter(p -> p.getId() == id)
                .findFirst()
                .orElseThrow( () -> new ProductNotFoundException(id) );
    }

    public int insert(Product prodToInsert) {
        prodToInsert.setId(lastId++);
        list.add(prodToInsert);
        return lastId;
    }

    public void update(Product prodToUpdate) {
        Product p = getOne(prodToUpdate.getId());
        p.setName(prodToUpdate.getName());
        p.setBrand(prodToUpdate.getBrand());
        p.setCategory(prodToUpdate.getCategory());
        p.setPrice(prodToUpdate.getPrice());
    }

}