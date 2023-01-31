package product_management.model;

import javax.persistence.*;

@Entity
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private Integer productId;
    private int quantity;
    private boolean isDelete;

    @ManyToOne
    @JoinColumn(name = "product_detail_id")
    private ProductDetail productDetail;

    @ManyToOne
    @JoinColumn(name = "size_id")
    private Size size;

    public Size getSize() {
        return size;
    }

    public Product() {
    }

    public Product(Integer id, Integer productId, int quantity, boolean isDelete, ProductDetail productDetail, Size size) {
        this.id = id;
        this.productId = productId;
        this.quantity = quantity;
        this.isDelete = isDelete;
        this.productDetail = productDetail;
        this.size = size;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public boolean isDelete() {
        return isDelete;
    }

    public void setDelete(boolean delete) {
        isDelete = delete;
    }

    public ProductDetail getProductDetail() {
        return productDetail;
    }

    public void setProductDetail(ProductDetail productDetail) {
        this.productDetail = productDetail;
    }

    public void setSize(Size size) {
        this.size = size;
    }
}
