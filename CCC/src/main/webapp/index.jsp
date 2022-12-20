<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

  <!-- jQuery 라이브러리 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <!-- 부트스트랩에서 제공하고 있는 스타일 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- 부트스트랩에서 제공하고 있는 스크립트 -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-cookie/1.4.1/jquery.cookie.min.js"></script>


 <style>
.contents {margin:0 auto; max-width:800px;}
.contents .title {margin:10px 0; font-size:25px; font-weight:600; text-align:center;}
.contents p {line-height:20px; font-size:14px;}

.layerPopup {display:none;}
.layerPopup:before {display:block; content:""; position:fixed; left:0; top:0; width:100%; height:100%; background:rgba(0,0,0,.5);}
.layerPopup .layerBox {position:fixed; left:50%; top:50%; transform:translate(-50%, -50%); padding:30px; background:#fff; border-radius:6px;}
.layerPopup .layerBox .title {margin-bottom:10px; padding-bottom:10px; font-weight:600; border-bottom:1px solid #d9d9d9;}
.layerPopup .layerBox .cont {margin-bottom:40px;}
.layerPopup .layerBox p {line-height:20px; font-size:13px;}
.layerPopup .layerBox .btnClose {display:inline-block; position:absolute; right:30px; top:25px; padding:6px 12px; color:#444; font-size:12px; text-decoration:underline;}
.layerPopup .layerBox .btnTodayHide {font-size:13px; font-weight:600; text-decoration:underline;}
 </style>

</head>
<body>

	<jsp:forward page="WEB-INF/views/main.jsp"/>
	
	
	
	
	
	<!-- HTML -->
<!-- page content --> 
<div class="contents">
    <h1 class="title">page title</h1>
    <p>
        lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
    </p>
    <!-- 이하 가독성을 위해 dummy text 삭제 -->
</div>

<!-- layer popup content -->
<div class="layerPopup">
    <div class="layerBox">
        <h1 class="title">레이어팝업 타이틀</h1>
        <div class="cont">
            <p>
                lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
            </p>
        </div>
        <a href="javascrfipt:;" class="btnClose">닫기</a>
        <a href="javascript:;" class="btnTodayHide">오늘 하루 보지 않기</a>
    </div>
</div>




<script>
var $layerPopup = document.querySelector('.layerPopup');
var $btnLayerPopupClose = document.querySelector('.layerPopup .btnClose');
var $btnLayerPopupTodayHide = document.querySelector('.layerPopup .btnTodayHide');

//최초 레이어팝업 노출 (testCookie라는 이름의 쿠키가 존재하지 않으면 레이어 노출)
if(!$.cookie('testCookie')){
	layerPopupShow();
}

//레이어팝업 닫기 버튼 클릭
$btnLayerPopupClose.addEventListener('click', function(){
    layerPopupHide(0);
});

//레이어팝업 오늘 하루 보지 않기 버튼 클릭
$btnLayerPopupTodayHide.addEventListener('click', function(){
    layerPopupHide(1);
});

//레이어팝업 노출
function layerPopupShow(){
    $layerPopup.style.display = 'block'
}
//레이어팝업 비노출
function layerPopupHide(state){
    //닫기버튼 오늘하루보지않기 버튼 무관하계 레이어팝업은 닫는다.
    $layerPopup.style.display = 'none'

    //오늘하루보지않기 버튼을 누른 경우
    if(state === 1){
    	//'testCookie' 이름의 쿠키가 있는지 체크한다.
        if($.cookie('testCookie') == undefined){
            //쿠키가 없는 경우 testCookie 쿠키를 추가
            $.cookie('testCookie', 'Y', { expires: 1, path: '/' });
            /**
                설명 :
                임의로 testCookie라는 이름에 Y라는 값을 넣어주었고,
                expires값으로 1을 주어 1일 후 쿠키가 삭제되도록 하였다.
                path값을 '/'로 주면 해당사이트 모든페이지에서 유효한 쿠키를 생성한다.
                특정페이지에서만 작동하려면 페이지 경로를 작성하면 된다.
            **/
        }        
    }
}

</script>


	
	
	

</body>
</html>