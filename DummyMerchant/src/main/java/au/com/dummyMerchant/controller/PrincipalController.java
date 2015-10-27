package au.com.dummyMerchant.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import au.com.dummyMerchant.model.Customer;
import au.com.dummyMerchant.model.Payment;
import au.com.dummyMerchant.model.User;

@Controller
public class PrincipalController {
	
	private final Log log = LogFactory.getLog(getClass());
	
	@RequestMapping(value={"/login"}, method = RequestMethod.GET)
	private ModelAndView processLogin(
			@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout){
		
		User user = new User();
		user.setUsername("edicsonm");
		user.setPassword("bigfoot69");
		ModelAndView model = new ModelAndView("login");
		model.addObject("user", user);
		
		if (error != null) {
			model.addObject("error", "Invalid username and password!");
		}

		if (logout != null) {			
			model.addObject("msg", "You've been logged out successfully.");
		}
		
		return model;
	}
	
	@RequestMapping(value="/logout", method = RequestMethod.GET)
	public String logoutPage (HttpServletRequest request, HttpServletResponse response) {
	    Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    if (auth != null){    
	        new SecurityContextLogoutHandler().logout(request, response, auth);
	    }
	    return "redirect:/login?logout";
	    //You can redirect wherever you want, but generally it's a good practice to show login screen again.
	}
	
	@RequestMapping(value={"/fillPayment"}, method = RequestMethod.GET)
	private ModelAndView processPrincipal(ModelMap model){
		
		Payment payment = new Payment();
		payment.setMerchant("39160054-72bc-11e5-a7fc-0211eb00a4cc");
		payment.setSite("5be22088-7166-11e5-82c5-0211eb00a4cc");
		payment.setAmount("10.01");
		payment.setCurrency("USD");
		payment.setTransactionReference("Ref-105489");
		payment.setTestTrans("TestTxn");
		payment.setProduct("Shoes");
		payment.setPaymentType("cc");
		payment.setAttemptMode("1");
		payment.setTestTrans("1");
		
		payment.setCustomer(new Customer());
		payment.getCustomer().setEmail("edicsonm@gmail.com");
		
		payment.getCustomer().setFirstName("John");
		payment.getCustomer().setLastName("Doe");
		payment.getCustomer().setDayOfBirthday("1977-10-17");
		payment.getCustomer().setAddress1("12 Billing Buddy st");
		payment.getCustomer().setCity("Sydney");
		payment.getCustomer().setState("NSW");
		
		payment.getCustomer().setPostCode("2200");
		payment.getCustomer().setCountry("AU");
		payment.getCustomer().setPhone("5555555555");
		payment.getCustomer().setFax("5555555555");
		payment.getCustomer().setMobile("5555555555");
		
		
		model.addAttribute("payment", payment);
		model.addAttribute("userAutenticated", getPrincipal());
		
		ModelAndView modelAndView = new ModelAndView("fillPayment");
		return modelAndView;
	}
	
	@RequestMapping(value = { "/sendPayment" }, method = RequestMethod.POST)
    public String sendPayment(@Valid Payment payment, BindingResult result,Model model) {
		model.addAttribute("payment", payment);
		model.addAttribute("userAutenticated", getPrincipal());
		if (result.hasErrors()) return "fillPayment";
		else return "confirmPayment";
		/*else return "pay";*/
	}
	
	@RequestMapping(value={"/result"}, method = RequestMethod.GET)
	private ModelAndView processResultGet(){
		log.info("LLamado recibido en processResultGet por el metodo GET");
		ModelAndView modelAndView = new ModelAndView("success");
		modelAndView.addObject("userAutenticated", getPrincipal());
		return modelAndView;
	}
	
	@RequestMapping(value={"/result"}, method = RequestMethod.POST)
	private ModelAndView processResultPost(
			@RequestParam(value="TransID", required=true) String TransID,
			@RequestParam(value="TransRef", required=true) String TransRef,
			@RequestParam(value="Amount", required=true) String Amount,
			@RequestParam(value="Currency", required=true) String Currency,
			@RequestParam(value="Status", required=true) String Status,
			@RequestParam(value="Message", required=true) String Message,
			@RequestParam(value="Email", required=true) String Email,
			@RequestParam(value="Key", required=true) String Key,
			@RequestParam(value="Test", required=true) String Test,
			@RequestParam(value="RebillId", required=true) String RebillId,
			@RequestParam(value="Fail", required=false, defaultValue = "000") String Fail
			){
		log.info("LLamado recibido en processResultPost por el metodo POST");
		
		ModelAndView modelAndView = new ModelAndView("result");
		modelAndView.addObject("userAutenticated", getPrincipal());
		return modelAndView;
	}
	
	@RequestMapping(value={"/success"}, method = RequestMethod.GET)
	private ModelAndView processSuccessGet(ModelMap model){
		log.info("LLamado recibido en processSuccessGet por el metodo GET");
		ModelAndView modelAndView = new ModelAndView("success");
		modelAndView.addObject("userAutenticated", getPrincipal());
		return modelAndView;
	}
	
	@RequestMapping(value={"/success"}, method = RequestMethod.POST)
	private ModelAndView processSuccessPost(ModelMap model){
		log.info("LLamado recibido en processSuccessPost por el metodo POST");
		ModelAndView modelAndView = new ModelAndView("success");
		modelAndView.addObject("userAutenticated", getPrincipal());
		return modelAndView;
	}
	
	@RequestMapping(value={"/failure"}, method = RequestMethod.POST)
	private ModelAndView processFailurePost(ModelMap model){
		log.info("LLamado recibido en processFailurePost por el metodo POST");
		ModelAndView modelAndView = new ModelAndView("failure");
		modelAndView.addObject("userAutenticated", getPrincipal());
		return modelAndView;
	}
	
	@RequestMapping(value={"/failure"}, method = RequestMethod.GET)
	private ModelAndView processFailureGet(
			@RequestParam(value="TransId", required=true) String TransId,
			@RequestParam(value="TransRef", required=true) String TransRef,
			@RequestParam(value="Email", required=true) String Email,
			@RequestParam(value="Amount", required=true) String Amount,
			@RequestParam(value="Currency", required=true) String Currency,
			@RequestParam(value="Message", required=true) String Message,
			@RequestParam(value="Product", required=true) String Product,
			@RequestParam(value="Key", required=true) String Key,
			@RequestParam(value="Test", required=true) String Test
			){
		log.info("LLamado recibido en processFailureGet por el metodo GET ");
		ModelAndView modelAndView = new ModelAndView("failure");
		modelAndView.addObject("TransId", TransId);
		modelAndView.addObject("TransRef", TransRef);
		modelAndView.addObject("Email", Email);
		modelAndView.addObject("Amount", Amount);
		modelAndView.addObject("Currency", Currency);
		modelAndView.addObject("Message", Message);
		modelAndView.addObject("Product", Product);
		modelAndView.addObject("Key", Key);
		modelAndView.addObject("Test", Test);
		modelAndView.addObject("userAutenticated", getPrincipal());
		return modelAndView;
	}
	
	private String getPrincipal(){
		String userName = null;
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

		if (principal instanceof UserDetails) {
			userName = ((UserDetails)principal).getUsername();
		} else {
			userName = principal.toString();
		}
		return userName;
	}
	
	
}
