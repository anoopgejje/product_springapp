package productcrudapp.Dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import productcrudapp.model.Product;

@Component
public class ProductDao {
	
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	//for create
	@Transactional
	public void create(Product product) {
		this.hibernateTemplate.saveOrUpdate(product);
	}
	
	//to get all products
	public List<Product> getallProducts(){
		List<Product> products = this.hibernateTemplate.loadAll(Product.class);
		return products;
	}
	
	@Transactional
	public void deleteProduct(int pid) {
		Product product = this.hibernateTemplate.get(Product.class, pid);
		this.hibernateTemplate.delete(product);
	}
	
	public Product getSingle(int id) {
		return this.hibernateTemplate.get(Product.class, id);
	}
}
