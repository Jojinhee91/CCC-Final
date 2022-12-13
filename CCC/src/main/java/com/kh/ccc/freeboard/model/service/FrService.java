package com.kh.ccc.freeboard.model.service;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import com.kh.ccc.common.model.vo.PageInfo;
import com.kh.ccc.freeboard.model.vo.FrBoard;
@Service
public interface FrService {

	//�Խñ� ����Ʈ ��ȸ + ����¡ó�� 
	
	// �Ʒ���  �����Խ��� �Խñ� �Ѱ���
	int selectListCount();
	
	//�����Խ��� �Խñ� ����Ʈ ��ȸ 
	ArrayList<FrBoard>selectList(PageInfo pi);

	
	//�Ʒ��� �����Խ��� �Խñ� �ۼ� (��������)
	int insertBoard(FrBoard fb);
	
	// �� �����Խ��� �Խñ� �� ��ȸ 
	FrBoard boardDetailView(int bno);
	
	//�Ʒ��������Խ���  �Խñ� ��ȸ�� ���� 
	int increaseCount(int BoardNo);
	
	//�Ʒ���  �����Խ��� �Խù� �� ���� -������  -���� ������ �������� ������
	FrBoard selectBoard(int BoardNo);
	
	//�����Խ��� �Խñ� ���� 
	int deleteBoard(int bno);
	
	//�����Խ��� �Խñ� ����
	int updateBoard(FrBoard b);

//	//�Խñ� �����ۼ� 
//	ArrayList<frReply> detailBoardReviewSelect(int bno);
//
//	//��� ���
//	int insertReply(frReply r);

}
