package kr.co.javaspecialist.mot.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.javaspecialist.mot.model.EmpVO;

public class WordAnalysisController extends MotController {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		String empnoStr = request.getParameter("empno");
		String view = "/";
		if(empnoStr != null) {
			try {
				int empno = Integer.parseInt(empnoStr);
				EmpVO emp = empDao.getEmpDetails(empno);
				request.setAttribute("emp", emp);
				view = "/mot/word_anal.jsp";
			}catch(Exception e) {
				request.setAttribute("message", "EMPNO_IS_NOT_VALID");
				view = "/emp/error.jsp";
			}
		}else {
			request.setAttribute("message", "EMPNO_NOT_FOUND");
			view = "/emp/error.jsp";
		}
		return view;
	}

}
