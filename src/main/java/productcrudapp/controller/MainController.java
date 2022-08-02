package productcrudapp.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.Mapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import productcrudapp.Dao.ProductDao;
import productcrudapp.model.Product;

@Controller
public class MainController {

	@Autowired
	private  ProductDao productDao;
	
	@RequestMapping("/")
	public String Home(Model m) {
		List<Product> p = productDao.getallProducts();
		m.addAttribute("product", p);
		return "index";
	}
	
	@RequestMapping("/addproduct")
	public String addProduct(Model m) {
		m.addAttribute("title", "Add Product");
		return "add-product";
	}
	
	@RequestMapping(value="/handleform" , method = RequestMethod.POST)
	public RedirectView handleform(@ModelAttribute Product product , HttpServletRequest request) {
		productDao.create(product);
		System.out.println(product);
		RedirectView redirectview = new RedirectView();
		redirectview.setUrl(request.getContextPath() + "/");
		
		return redirectview;
	}
	
	@RequestMapping("/delete/{productid}")
	public RedirectView deleteProduct(@PathVariable ("productid") int pid , HttpServletRequest request) {
		this.productDao.deleteProduct(pid);
		RedirectView redirectview = new RedirectView();
		redirectview.setUrl(request.getContextPath() + "/");
		return redirectview;
	}
	
	@RequestMapping("/update/{id}")
	public String updateProduct(@PathVariable ("id") int id , Model model ){
		Product product = this.productDao.getSingle(id);
		model.addAttribute("product", product);
		return "updateProduct";
	}
	
}
