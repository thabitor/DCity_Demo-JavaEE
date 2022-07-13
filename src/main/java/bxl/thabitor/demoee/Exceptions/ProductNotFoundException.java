package bxl.thabitor.demoee.Exceptions;

public class ProductNotFoundException extends RuntimeException {

    private final int id;

    public ProductNotFoundException(int id) {
        super("Le produit d'id {"+ id + "} n'a pas pu être trouvé");
        this.id = id;
    }

    public int getId() {
        return id;
    }
}
