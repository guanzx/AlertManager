package com.funshion.test;
import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TestController {

	@Autowired
	@Qualifier("monitorManager")
	private MonitorManager monitorManager;
	
	@RequestMapping("/monitor")
	public ModelAndView myMethod(HttpServletRequest request,HttpServletResponse response) throws Exception {
		UserDetails userDetail = (UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();	
		ModelAndView modelAndView = new ModelAndView("/monitor");
		modelAndView.addObject("loginUser",userDetail.getUsername());
		return modelAndView;
	}
	
	@RequestMapping("/login")
	public Object loginMethod(HttpServletRequest request,HttpServletResponse response) throws Exception {
		return "login";
	}
	
	@RequestMapping("/insertData")
	public void myMethod1(HttpServletRequest request,HttpServletResponse response) throws Exception {
		UserDetails userDetail = (UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();	
		ParamBean paramBean = new ParamBean();
		paramBean.setLoginName(userDetail.getUsername());
		paramBean.setMonitorItem(request.getParameter("monitorItem"));
		paramBean.setIndicator(request.getParameter("indicator"));
		paramBean.setThreshhold( request.getParameter("threshhold"));
		paramBean.setEmail(request.getParameter("email"));
		monitorManager.insertData(paramBean);
	}
	
	@RequestMapping("/my-monitor")
	public ModelAndView loginMethod1(HttpServletRequest request,HttpServletResponse response) throws Exception {
		
		String userName = request.getParameter("userName");
		List<Map<String,Object>> list = monitorManager.getMonitorData(userName);
		GenerateJson gen = new GenerateJson();
		String json = gen.generate(list);
		ModelAndView modelAndView = new ModelAndView("/my-monitor");
		modelAndView.addObject("json",json);
		return modelAndView;
	}	
	
	 public static void transmitDataToJsp(HttpServletRequest request, HttpServletResponse response, String data) {
	        try {
	            request.setCharacterEncoding("utf8");
	            response.setCharacterEncoding("utf8");
	            response.getWriter().println(data);
	        } catch (IOException e) {
	            e.printStackTrace();
	            try {
	                response.getWriter().println("");
	            } catch (IOException ie) {
	                ie.printStackTrace();
	            }
	        }
	    }
}