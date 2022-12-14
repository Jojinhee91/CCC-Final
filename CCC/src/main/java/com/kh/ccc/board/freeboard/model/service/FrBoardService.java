package com.kh.ccc.board.freeboard.model.service;

import java.util.ArrayList;

import com.kh.ccc.board.freeboard.model.vo.FrBoard;
import com.kh.ccc.board.freeboard.model.vo.FrBoardAttach;
import com.kh.ccc.common.model.vo.PageInfo;

public interface FrBoardService {

	//게시글 리스트 조회 + 페이징처리 
	
		// 아래는 게시글 총개수
		int selectListCount();
		
		
		//게시글 리스트 조회 
		ArrayList<FrBoard>selectList(PageInfo pi);


//		//아래는 게시글 조회수 증가 
		int increaseCount(int fno);

		//아래는 게시글 자세히보기 
		FrBoard frboardDetailView(int fno);

		//아래는 사진포함 게시글등록 (글만)
		int insertFrBoard1(FrBoard fb);

		//아래는 사진포함 게시글등록 (사진포함)
		int insertAttFrBoard2(FrBoardAttach fab);

//		

//		
//		//게시글 상세 조회 
//		FrBoard boardDetailView(int bno);
//		

//		
//		//아래는 게시물 상세 보기 -선생님  -현재 선생님 버전으로 진행중
//		FrBoard selectBoard(int BoardNo);
//		
//		//게시글 삭제 
//		int deleteBoard(int bno);
//		
//		//게시글 수정
//		int updateBoard(FrBoard fb);

//		//게시글 리뷰작성 
//		ArrayList<Reply> detailBoardReviewSelect(int bno);
//
//		//댓글 등록
//		int insertReply(Reply r);

		//조회수 top5 메인에 게시글 조회

//		ArrayList<FrBoard> topBoard();
}