package com.test;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.portlet.ActionRequest;
import javax.portlet.ActionResponse;

import com.liferay.portal.kernel.log.Log;
import com.liferay.portal.kernel.log.LogFactoryUtil;
import com.liferay.portal.kernel.util.ParamUtil;
import com.liferay.sample.model.BasicData;
import com.liferay.sample.service.BasicDataLocalServiceUtil;
import com.liferay.util.bridges.mvc.MVCPortlet;

/**
 * Portlet implementation class Test1Portlet
 */
public class Test1Portlet extends MVCPortlet {
 

	private static final Log _log=LogFactoryUtil.getLog(Test1Portlet.class);
	
	public  void auiAction(ActionRequest request,ActionResponse response){
		
		_log.info("auiAction called");
		
		SimpleDateFormat dateFormat=new SimpleDateFormat("yyyy-MM-dd");
		
		
		String firstName=ParamUtil.getString(request, "firstName");
		int age=ParamUtil.getInteger(request, "age");
		String isMajor=ParamUtil.getString(request, "isMajor");
		
		boolean major=false;
			if(isMajor.equalsIgnoreCase("true")){
				major=true;
			}
		
		String dob=ParamUtil.getString(request, "dob");
		Date dobDate=null;;
		try {
			dobDate = dateFormat.parse(dob);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		_log.info("firstName>>>"+firstName);
		_log.info("age>>>"+age);
		_log.info("isMajor>>>"+isMajor);
		_log.info("dob>>>"+dob);
		
		BasicDataLocalServiceUtil.updateBasicData(0L, firstName, age, major, dobDate);
		
		_log.info("Data updated..");
		
		response.setRenderParameter("jspPage", "/html/test1/result.jsp");
	}
	
	public  void basicAction(ActionRequest request,ActionResponse response){
		
		_log.info("basicAction called");
		
		 long age=ParamUtil.getLong(request, "age");
		 
		 
		
		_log.info("age>>>"+age);
	}
}
