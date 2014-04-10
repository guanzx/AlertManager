package com.funshion.test;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TestController {

	@RequestMapping("/hello")
	public Object myMethod(HttpServletRequest request,HttpServletResponse response, 
			ModelMap modelMap) throws Exception {
		modelMap.put("loginUser","guanzx");
		return new ModelAndView("/hello", modelMap);
	}
	
	@RequestMapping("/login")
	public Object loginMethod(HttpServletRequest request,HttpServletResponse response) throws Exception {
		return "login";
	}
}