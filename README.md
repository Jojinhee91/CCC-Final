# CCC-Final

![메인페이지](https://user-images.githubusercontent.com/120001999/218314191-a71ab7e7-8306-4dd6-a10e-0a7cd576ff3c.jpg)


Create Character <br>
Challenge Character <br>
Choose Character <b>by. Hard Charac </b>

회원들이 각자 만든 캐릭터를 등록하고, 각자의 최고의 캐릭터에 투표합니다. <br>
최고의 캐릭터를 뽑아 굿즈를 만들어 판매하는 사이트입니다.

<hr>

<li>개발 목표 : 캐릭터 대회 및 캐릭터 굿즈 쇼핑몰 개발 <br>
<li>수행 기간 : 2022년 12월 5일 ~ 2023년 1월 12일 (약 6주) <br>
<li>개발 인원 : 6명 <br>
<li>기여도 : 20% <br><br>


<li>팀 전체 구현 기능 : <br>

<pre>
<li type="circle"> 상품 등록, 상품 리스트 조회, 상품 리뷰 작성 및 상품 검색.
<li type="circle"> 장바구니 & 관심 상품 추가 및 삭제 / 배송지 조회, 주문 내역 기간별 조회, 배송지 정보 등록, 수정, 삭제.
<li type="circle"> 공지사항 다중 첨부파일 글 등록, 수정, 삭제. 페이지당 게시글 변경 및 페이징 처리.
<li type="circle"> 자유게시판 다중 첨부파일 글 등록, 수정, 삭제. 댓글 등록, 수정, 삭제. 관리자 로그인 시 그룹 삭제.
<li type="circle"> 문의 게시판 글 등록, 수정, 삭제. 내 글보기. 관리자 로그인 시 그룹 삭제 및 답변 등록.
<li type="circle"> 캐릭터 게시판 글 등록, 수정, 삭제. 캐릭터 좋아요 표시. 게시글에 댓글 및 대댓글 등록, 수정, 삭제.
<li type="circle"> 내 캐릭터 조회, 등록, 수정, 삭제 / 캐릭터 월드컵
<li type="circle"> 로그인, 회원가입 / 관리자 등록, 수정, 삭제 / 회원 그룹 차단. 회원 목록 EXCEL 문서로 출력.
</pre><br>

 
<li> 개발 환경 :

<pre>
<li type="circle"> OS : Window 10
<li type="circle"> Development Tool : STS3, Visual Studio Code
<li type="circle"> DBMS : Oracle DB-SQLDeveloper
<li type="circle"> Server : Apache Tomcat v8.5
<li type="circle"> Framework : Spring Framework 5.3.24, Mybatis 3
<li type="circle"> Management and comprehension Tool : Maven 3.8.6
<li type="circle"> Language : Java 1.8, JavaScript5, HTML5, CSS3
<li type="circle"> Application Tool : JSP 3.2
<li type="circle"> Design Tool : BootStrap 4.3.1
<li type="circle"> Library : jQuery 3.4.1
<li type="circle"> Team Collaboration Tool : Github
</pre><br>
<hr>

<li> ER Diagram :

![212940559-59cc73d0-5298-4176-b2a2-423ca08698ce](https://user-images.githubusercontent.com/120001999/218314098-b1ecf01a-e8fb-4ebc-afeb-390db8d35686.png)

<hr><br><br><br><br>

<h1> 담당 기능 설명 : 굿즈샵 전체 개발 및  / 캐캐캐 메인 화면 디자인 </h1> <br><br>


![메인페이지](https://user-images.githubusercontent.com/120001999/218314191-a71ab7e7-8306-4dd6-a10e-0a7cd576ff3c.jpg)

<br><pre>
캐캐캐 사이트 메인 화면에서 GOODS 메뉴를 클릭하면 이동하여 들어갈 수 있는 굿즈샵 메인 페이지입니다. <br>
상단의 돋보기 아이콘을 누르면 검색창이 활성화되어 검색이 가능합니다. <br>
</pre> <br><br><br>


![리스트페이지](https://user-images.githubusercontent.com/120001999/218314238-f5305057-7d0c-40b7-81d4-af41966c4fe7.jpg)

<br><pre>
네비바에서 드롭다운  되는 각 카테고리를 누를 시 보여지는 굿즈 리스트 페이지입니다. <br>
상단에는 시간이 지나면 자동으로 좌측 슬라이드되는 배너광고 기능을 추가하였으며 <br>
차례로 썸네일 이미지, 카테고리명, 브랜드명, 가격, 글 제목을 데이터베이스로부터 끌어올 수 있도록 하였습니다. <br>
글작성 부분은 관리자만 접근할 수 있도록 막아두었습니다. <br>
</pre> <br><br><br>



![상세페이지](https://user-images.githubusercontent.com/120001999/218314272-ff6cd33d-4081-4c76-a707-3dd02d3d233b.jpg)

<br><pre>
상품 상세페이지입니다. 상단에 카테고리명과 썸네일 사진, 브랜드명, 제목이 띄워집니다. <br>
DB에 저장된 판매가에 맞춰서 할인 판매가와 쿠폰 적용가가 각각의 수치에 맞게 자동 적용되어 표기됩니다. <br>
상품 코드는 시퀀스가 발생하여 자동으로 생성되며 <br>
바로구매와 장바구니, 관심 상품은 로그인 후 이용 가능하며 클릭 시 각각의 위치로 연결됩니다. <br>
장바구니와 관심 상품은window.confirm기능을 통해 이동 여부를 물어봅니다. <br>
</pre> <br><br><br>



![리뷰 기능](https://user-images.githubusercontent.com/120001999/218314323-7473dd0a-4820-47d0-8be4-953b760bb275.jpg)

<br><pre>
상품 페이지 하단의 상품 후기 기능입니다. 별점과 사진 업로드 기능을 함께 구현하였습니다.
사진에 마우스를 대면 hover를 통해 원본 사이즈로 크게 보이게됩니다.
</pre> <br><br><br>

<h1>읽어주셔서 감사합니다.</1>
 <br><br><br>



![212936006-f712dda9-7ad5-47de-93c2-b396ade4e322](https://user-images.githubusercontent.com/120001999/218313104-147e1d30-4119-434d-ba05-803e6663e3de.png)



