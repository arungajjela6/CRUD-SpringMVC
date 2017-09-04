package com.mtc.app;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.mtc.app.entity.InterfaceProduct;
import com.mtc.app.entity.product;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	@Autowired
	private InterfaceProduct productDAO;

	@RequestMapping(value = "/")

	public ModelAndView list() {

		ModelAndView modelandview = new ModelAndView("home");
		
		List<product> productList = productDAO.fetchProduct();

		modelandview.addObject("productlist", productList);

		return modelandview;
	}
	
	 @RequestMapping(value = "/list/{id}")
	    public ModelAndView fetchProduct(@PathVariable("id") int id)
	    {
	        ModelAndView model = new ModelAndView("productbyid");
	        
	        product product = productDAO.fetchProductById(id);
	        
	        model.addObject("productbyid",product);        
	        
	        return model;
	    }
	 
	 @RequestMapping(value = "/delete/{id}")
	    public String deleteProduct(@PathVariable("id") int id)
	    {
	        productDAO.deleteProduct(id);       
	        
	        return "redirect:/";
	    }
	 
	 @RequestMapping(value = "/addproducts")
	 	public String addProduct(@ModelAttribute("product") product product) {
		 
		 productDAO.addProduct(product);
		 
		 return "redirect:/" ;
	 }
	 
	 @RequestMapping(value = "/add")
	 	public ModelAndView add() {
		 
		 ModelAndView model = new ModelAndView("addproducts");
		 
		 return model ;
	 }
	 
	 @RequestMapping(value = "/update/{id}")
	 public String edit(@PathVariable("id") int id, @ModelAttribute("product") product product) {
		 
		 productDAO.editProduct(product);
		 
		 return "redirect:/" ;
	 }
	 
	 @RequestMapping(value = "/edit/{id}")
	 	public ModelAndView editProduct(@PathVariable("id") int id) {
		 
		 ModelAndView model = new ModelAndView("editproduct");
	 
		 return model;
	 }
}