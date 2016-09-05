package kr.co.javaspecialist.crawling.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.javaspecialist.common.controller.CommandHandler;
import kr.co.javaspecialist.crawling.model.CrawlingService;

public class CrawlingController implements CommandHandler {
	
	CrawlingService service = new CrawlingService(); //아래 2번 
			
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		// 1. request에서 파라미터 조회
		String param = request.getParameter("param");
		// 2. DAO또는 Service객체 생성
		
		// 3. 위 객체의 메서드 실행
		String result = service.getData(param);
		
		// 4. 결과를 request에 저장
		request.setAttribute("result", result);
		return "/crawlData.jsp"; //5
	}

}
