package com.kh.ccc.freeboard.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.ccc.common.model.vo.PageInfo;
import com.kh.ccc.freeboard.model.service.FrService;
import com.kh.ccc.freeboard.model.vo.FrBoard;



@Controller
public class FreeBoardController {
	
	
	@Autowired
	private FrService FrService;
	
	
	//�Ʒ��� �����Խ��� ����Ʈ ����ֱ� 
	@RequestMapping("list.fr")
	public ModelAndView selectFrList(ModelAndView mv,HttpSession session) {
		
		//����¡ ó������
		int listCount = FrService.selectListCount();
		int pageLimit = 10;	//�ϴܿ� ����¡�� ����
		int boardLimit =5; //���������� ��� ��ﲫ��!
	//		
		
		PageInfo pi=Pagination.getPageinfo(listCount, currentPage, pageLimit, boardLimit);
		
		ArrayList<FrBoard> list = FrService.selectList(pi);
		
		
		
		mv.setViewName("freeBoard/freeBoardListView");
		
		
		
		return mv;
	}
	
}
