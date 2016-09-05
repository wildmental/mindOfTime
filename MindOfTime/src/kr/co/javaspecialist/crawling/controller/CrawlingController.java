package kr.co.javaspecialist.crawling.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.javaspecialist.common.controller.CommandHandler;
import kr.co.javaspecialist.crawling.model.CrawlingService;

public class CrawlingController implements CommandHandler {
	
	CrawlingService service = new CrawlingService(); //�Ʒ� 2�� 
			
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		// 1. request���� �Ķ���� ��ȸ
		String param = request.getParameter("param");
		// 2. DAO�Ǵ� Service��ü ����
		
		// 3. �� ��ü�� �޼��� ����
		String result = service.getData(param);
		
		// 4. ����� request�� ����
		request.setAttribute("result", result);
		return "/crawlData.jsp"; //5
	}

}
