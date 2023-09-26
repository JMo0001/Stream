<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- <title>채팅</title> -->
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link rel="shortcut icon" href="img/icons/icon-48x48.png" />

	<link rel="canonical" href="https://demo-basic.adminkit.io/" />

	<title>AdminKit Demo - Bootstrap 5 Admin Template</title>
	
	<!-- Bootstrap CSS -->
	<link href="${pageContext.request.contextPath}/css/streamapp.css" rel="stylesheet">
	
	<!-- ProjectList CSS -->
	<link href="${pageContext.request.contextPath}/css/projectList.css" rel="stylesheet">
	<!-- Modal CSS -->
	<link href="${pageContext.request.contextPath}/css/Modalchat.css" rel="stylesheet">
	
	<!-- DropDown - Option CSS -->	
	<link href="${pageContext.request.contextPath}/css/projectList.option.css" rel="stylesheet">
	
	<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&display=swap" rel="stylesheet">
	<!-- Tab bar -->
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<style>
	#s_chat_btn {
		width: 240px;
	}
	
	#s_emp_list {
		font-size: 1.1em;
		width: 120px;
		height: 45px;
		border: 1px solid;
	}
	
	#s_chat_list {
		font-size: 1.1em;
		border: 1px solid;/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content/Box */
.modal-content {
  background-color: #f5f7fb;
  padding: 0px;
  /* border: 1px solid #888; */
  height: 100%;
}

.modal-header {
	height: 65px;
    background-color: #009b77;
}

.modal-body {
	padding: 15px 15px;
	margin: 0 auto;
}

.modal-text {
	display: block;
	padding: 0.625rem 1.625rem;
}

/* The Close Button */
.close {
	color: white;
	float: right;
	font-size: 28px;
	font-weight: bold;
	padding-right: 10px;
}

.close:hover,
.close:focus {
  color: black;
  text-decoration: none;
  cursor: pointer;
}

/* Date */
.form-date {
	width: 45%;
}

/* Project */
/* Right */
.modal-content.project {
  border-radius: 40px 0 0 40px;
}

.modal-header.project {
    border-radius: 40px 0 0;
}

.modal.project.right .modal-dialog {
	position: fixed;
	margin: auto;
	width: 40%;
	height: 100%;
	-webkit-transform: translate3d(0%, 0, 0);
	    -ms-transform: translate3d(0%, 0, 0);
	     -o-transform: translate3d(0%, 0, 0);
	        transform: translate3d(0%, 0, 0);
}
.modal.project.right.fade .modal-dialog {
	right:-40%;
	-webkit-transition: opacity 0.3s linear, right 0.3s ease-out;
    -moz-transition: opacity 0.3s linear, right 0.3s ease-out;
    -o-transition: opacity 0.3s linear, right 0.3s ease-out;
     transition: opacity 0.3s linear, right 0.3s ease-out;
}
.modal.project.right.fade.show .modal-dialog {
	right: 0;
}

.card-body.addProject {
	cursor: auto;	
    height: 670px;
}

/* PtaskModal */
.modal-dialog.ptask {

    position: relative;
    z-index: 5;
    height: 80%;
    width: 674px;
    margin: 5% auto 0 auto;
    background: #fff;
    border: 1px solid #777;
    box-sizing: border-box;
    box-shadow: 20px 20px 30px rgba(0,0,0,.2);
    border-radius: 10px;
}

.modal-content {
	border-radius: 10px;
}

.modal-header.ptask {
    height: 65px;
    background-color: #009b77;
	border-radius: 10px 10px 0px 0px;
}

.form-select.mb-3.selectCategory {
    width: 30%;
}

.form-control.manager {
	width: 30%;
}

.feather.feather-clock.align-middle.me-2 {
    position: relative;
    bottom: 8px;
}

.card-header.ptaskTitle {
	padding: 1rem 0rem;
}

.card-body.ptask {
	cursor: auto;	
    height: 670px;
}

/* updateProjectModal */

.modal-dialog.updateProject {

    position: relative;
    z-index: 5;
    height: 80%;
    width: 674px;
    margin: 30px auto 0 auto;
    background: #fff;
    border: 1px solid #777;
    box-sizing: border-box;
    box-shadow: 20px 20px 30px rgba(0,0,0,.2);
    border-radius: 10px;
}

.modal-content {
	border-radius: 10px;
}

.modal-header.updateProject {
    height: 65px;
    background-color: #009b77;
	border-radius: 10px 10px 0px 0px;
}

.form-select.mb-3.selectCategory {
    width: 30%;
}

.feather.feather-clock.align-middle.me-2 {
    position: relative;
    bottom: 8px;
}

.card-header.updateProjectTitle {
	padding: 1rem 0rem;
}

.card-body.updateProjectTitle {
	cursor: auto;	
    height: 670px;
}

form {
	cursor: auto;	
}
		
	}
	
	#s_sub_menu {
		display: flex;
		margin-top: 5px;
	}
	
	.s_menu_box {
		width: 242px;
		height: 910px;
		border: 1px solid lightgray;
		border-radius: 10px;
		padding: 20px;
		overflow: auto;
		margin: 5px 0;
	}
	
	.s_modal_menu_box {
		width: 400px;
		height: 500px;
		border: 1px solid lightgray;
		border-radius: 10px;
		padding: 20px;
		overflow: auto;
	}
	
	.s_emp_box {
		display: flex;
		align-items: center;
		justify-content: space-evenly;
		border-bottom: 1px solid lightgray;
		padding: 10px 0;
	}
	
/* 	.s_img_style {
		width: 50px;
		height: 50px;
		border-radius: 25px;
	}
	 */
	#s_f_list {
		font-size: 1.2em;
		padding: 10px 0;
		font-weight: bold;
		color: #0d6efd;
		text-align: center;
		margin-top: 5px;
	}
	
/* 	.s_dn_en {
		display: inline-block;
	} */
	
	#s_sub_menu_box {
		width: 250px; 
		height: 1000px; 
		margin-top: 25px;
		margin-left: 10px;
	}
	
	#s_menu_box2 {
		display: none;
	}
	
	.s_chat_box {
		margin-bottom: 20px;
		border-bottom: 1px solid lightgray;
		padding-bottom: 20px;
		cursor: pointer;
	}
	
	.modal-body {
		margin: 0 auto;
	}
	
	#s_select_part {
	    text-align: center;
	    height: 100px;
	    overflow: auto;
	    border: 1px solid lightgray;
	    border-radius: 10px;
	    padding: 20px;
	    margin-bottom: 30px;
	    width: 400px;
	}
	
	.s_select_part_tt {
		font-size: 1.2em;
	    font-weight: bold;
	    text-align: center;
    	margin-bottom: 10px;
	}
	
	.s_invite_p {
		border: 1px solid;
	    width: 90px;
	    padding: 0 10px;
	    border-radius: 10px;
	    display: inline-block;
	    margin: 5px;
	}
	
	.btn-close {
		font-size: .7em;
		margin-left: 3px;
	}
	
	#s_select_part_cnt {
		margin-left: 5px;
	    color: gray;
	}
	
	#s_chat_content_box {
		border: 1px solid lightgray;
		height: 1012px;
		width: 1050px;
		margin-top: 20px;
		margin-left: 10px;
		border-radius: 10px;
		padding: 20px;
	}
	/* 스크롤바 디자인 */
	.s_scroll::-webkit-scrollbar {
    	width: 10px;  /* 스크롤바의 너비 */
    	height: 10px;  /* 스크롤바의 너비 */
	}
	
	.s_scroll::-webkit-scrollbar-thumb {
	    height: 30%; /* 스크롤바의 길이 */
	    background: #34343482; /* 스크롤바의 색상 */
	    
	    border-radius: 10px;
	}
	
	.s_scroll::-webkit-scrollbar-track{
	    background: #4747471a;  /*스크롤바 뒷 배경 색상*/
	    border-radius: 10px;
	}
	
/* 	#s_chat_img {
	    display: flex;
	    align-content: stretch;
	    justify-content: center;
	    align-items: center;
	    flex-direction: row;
	    flex-wrap: wrap;
	    margin-top: 320px;
	} */
	
	.s_room_tt {
		font-size: 1.2em;
	    font-weight: bold;
	}
</style>
<!-- SweetAlert -->
<style>
	/*모달창  */
	.swal-modal {
		/* background-color: white; */
		border: 3px solid white;
	}
	/*ok버튼  */
	.swal-button--danger {
		background-color: #0583F2;
		color: white;
	}
	/*cancel버튼  */
	.swal-button--cancel {
		background-color: red;
		color: white;
	}
	/*ok버튼  */
	.swal-button--confirm {
		background-color: #0583F2;
		color: white;
	}
	/*아이콘 테두리  */
	.swal-icon--info {
		border-color: #0583F2;
	}
	/*아이콘 i 윗부분  */
	.swal-icon--info:after {
		background-color: #0583F2;
	}
	/*아이콘 i 아랫부분  */
	.swal-icon--info:before {
		background-color: #0583F2;
	}
	/*타이틀  */
	.swal-title {
		font-size: 20px;
		color: black;
	}
	/*텍스트  */
	.swal-text {
		color: black;
	}
	.chatimg{
		width: 50px;
	}
</style>
</head>
<body>
	<div class="wrapper">
		<%@ include file="/WEB-INF/views/sidebar.jsp" %>
		<div class="main">
			<%@ include file="/WEB-INF/views/headernavbar.jsp" %>
	<section>
        <article style="float: left;">
            <div id="s_sub_menu_box">
                <button id="s_chat_btn" class="btn btn-success btn-lg" data-bs-toggle="modal" data-bs-target="#roomModal">방 만들기</button>
				<!-- 서브 메뉴 -->
				<div id="s_sub_menu">
	                <button id="s_emp_list" class="btn btn-primary s_chat_menu">참여자목록</button>
	                <button id="s_chat_list" class="btn btn-light s_chat_menu" style="width: 120px; height: 45px">채팅 리스트</button>
                </div>
                <!-- 사원 목록 클릭 시 띄울 내용 -->
                <div id="s_menu_box1" class="s_menu_box s_scroll">
                 <c:forEach items="${list}" var="i">
	                <div class="s_emp_box">
	                	<!-- 로그인한 사람의 프로필 사진 -->
	                	<%-- <img class="s_img_style" src="${selectOne.emp_file_path }"> --%>
	                	<!-- 로그인한 사람의 부서명, 이름 -->
	                	<%-- <div class="s_dn_en">${selectOne.dept_name } - ${selectOne.emp_name }</div> --%>
 	                	<img class="chatimg" src="img/avatars/user1.jpg" ><h3 style="margin-top: 10px">${i.mname}</h3>
	                </div>
	             	</c:forEach>
	                <div id="s_f_list">참여자 리스트</div>
	              	
	                <!-- 로그인한 사람 제외한 사원 리스트만큼 반복문 실행 -->
	                <c:forEach items="" var="i">
		                <div class="s_emp_box">
		                	
		                	<!-- 사원의 프로필 사진 -->
		                	<%-- <img class="s_img_style" src="${i.emp_file_path }"> --%>
		                	<!-- 사원의 부서명, 이름 -->
		                	<%-- <div class="s_dn_en">${i.dept_name } - ${i.emp_name }</div> --%>
		                	
	                	</div>
	                </c:forEach>
                </div>
                <!-- 채팅 리스트 클릭 시 띄울 내용 -->
                <div id="s_menu_box2" class="s_menu_box s_scroll">
                	<!-- 채팅방 리스트만큼 반복문 실행 -->
                	<c:forEach items="${selectRoom }" var="i">
	                	<div class="s_chat_box">
	                		<!-- 채팅방 상세조회 시 넘길 방 번호 hidden으로 주기 -->
	                		<input type="hidden" id="${i.room_no }" value="${i.room_no }">
	                		<!-- 방 제목 표기 -->
		                	<div class="s_room_tt">${i.room_title }</div>
		                	<!-- 해당 방 마지막 대화 표기 -->
		                	<c:if test="${empty i.ch_content}">
		                		<div>대화를 시작해주세요.</div>
		                	</c:if>
		                	<c:if test="${not empty i.ch_content }">
		                		<div>${i.ch_content }</div>
		                	</c:if>
	                	</div>
                	</c:forEach>
                </div>
            </div>
        </article>  
        <article style="float: left;">
        	<!-- 채팅방 클릭 시 해당 채팅방 띄울 div -->
            <div id="s_chat_content_box">
            	<!-- 채팅방 클릭 전은 로고 띄움 -->
            	<a class="sidebar-link" href="javascript:popupOpen()" ><span style="color: green;">채팅방 참여</span></a>
            </div>
        </article>    
    </section>
    
    
    <!-- 방 만들기 Modal -->
	<div class="modal fade" id="roomModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content" style="height: 900px;">
	      <div class="modal-header">
	        <!-- <h5 class="modal-title" id="exampleModalLabel">방 만들기</h5> -->
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <div class="modal-body">
      			<div>
      				<div class="s_select_part_tt">방 제목</div>
      				<input type="text" class="form-control" style="margin-bottom: 30px;" id="s_room_title" name="room_title" placeholder="방 제목을 입력해주세요." required>
      			</div>
        		<div>
        			<!-- 친구 리스트에서 체크하는 사람 이름 추가될 div박스 -->
        			<div class="s_select_part_tt">대화상대 선택<span id="s_select_part_cnt"></span></div>
	        		<div id="s_select_part" class="s_scroll">
	        			<div style="margin-top: 17px;" id="s_invite_list">초대할 친구를 선택해주세요.</div>
        			</div>
       			</div>
		        <div class="s_modal_menu_box s_scroll">
                <div id="s_f_list">참여자 리스트</div>
                <!-- 로그인한 사람 제외한 사원 리스트만큼 반복문 실행 -->
                <c:forEach items="${list }" var="i">
	                <div class="s_emp_box">
	                <img class="chatimg" src="img/avatars/user1.jpg" ><h3 style="margin-top: 10px">${i.mname}</h3>
	                	<!-- 사원의 프로필 사진 -->
	                	<%-- <img class="s_img_style" src="${i.emp_file_path }"> --%>
	                	<!-- 사원의 부서명, 이름 -->
	                	<%-- <div class="s_dn_en">${i.dept_name } - ${i.emp_name }</div> --%>
	                	<div class="form-check">
	                	  <!-- 체크박스 이름은 사원의 이름으로 넣어줌 -->
						  <input class="form-check-input" name="${i.mname}" type="checkbox">
						</div>
	                </div>
                </c:forEach>
	        </div>
	      </div>
	      <div class="modal-footer" style="padding: 0 100px">
	      <button type="button" class="btn btn-primary" id="s_create_room">방만들기</button>
	        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
	        
	      </div>
	      
	    </div>
	  </div>
	</div>
</div>
</div>
</body>

	<script src="${pageContext.request.contextPath}/js/app.js"></script>
<!-- 모달창 스크립트 -->
 <script>
	// 체크박스 선택됐을 때 대화상대선택 박스에 넣기
	
	// 체크박스가 변했을 때마다 함수 실행
	$("input[type='checkbox']").change(function() {
		var name = $(this).parent().siblings().text(); // ex) 영업팀 - 차두리
		name = name.split(' - '); // ' - ' 구분자를 기준으로 잘라 배열 형식으로 가져옴  ex) name[0] 영업팀 name[1] 차두리
		// 위에서 체크박스 name을 사원의 이름으로 넣어주어 해당 checkbox의 name이 name[1]인 것이 체크되어 있다면
		if($("input:checkbox[name=" + name[1] + "]").is(':checked')) { // 체크박스 체크되어 있을 경우
			// 초대할 친구를 선택해주세요. 문구는 보이지 않도록 설정
			$("#s_invite_list").css('display', 'none');
			// 대화상대 선택박스에 div박스에 해당 사원 이름과 닫기버튼 추가
			// 이 때 닫기버튼에 remove(this) 함수를 넣어주어 닫기버튼 클릭 시 remove함수 실행하여 해당 div박스 제거
			$("#s_select_part").append('<div class="s_invite_p" >' + name[1] + '<button type="button" class="btn-close" onclick="remove(this)" aria-label="Close"></button></div>')
			// 대화상대선택 옆 띄울 숫자 변경
			cplength();
		} else { // 체크박스 해제 시
			// 체크박스 선택 시 대화상대 선택박스에 추가된 div의 class만큼 반복문 실행
			for(var i = 0; i < $(".s_invite_p").length; i++){
				// 해당 div박스의 text가 체크박스에서 선택한 name[1]과 같으면
				if($(".s_invite_p").eq(i).text() == name[1]) {
					// 해당 div박스 삭제
					$(".s_invite_p").eq(i).remove();
					// 반복문 탈출
					break;
				}
			}
			// 대화상대선택 옆 띄울 숫자 변경
			cplength();
		}
		// 대화상태 선택이 많아져서 스크롤바 생겼을 시 추가될 때마다 스크롤 제일 하단으로 내리기
		var offset = $("#s_select_part").children().last().offset();
		$("#s_select_part").animate({scrollTop : 90000},0);
	})
	
	// 대화상대선택 옆 띄울 숫자
	function cplength() {
		// 대화상대선택에 아무도 선택되지 않았다면
		if($(".s_invite_p").length == 0) {
			// 대화상대 선택 숫자 안띄움
			$("#s_select_part_cnt").text("");
		} else { // 있다면
			// 선택된 div개수 만큼 띄움
			$("#s_select_part_cnt").text($(".s_invite_p").length);
		}
	}
	
	// 대화상대 X 버튼 눌렀을 때 제거
	function remove(e) {
		// 버튼의 부모인 div의 text로 이름을 name의 변수에 담아줌
		var name = $(e).parent("div").text();
		// 그 name을 가진 checkbox의 name이 체크되어 있으면 해제해줌
		$("input:checkbox[name=" + name + "]").prop("checked", false);
		// div박스 삭제
		$(e).parent().remove();
		// 대화상대선택 옆 띄울 숫자 변경
		cplength();
	}
	
	// 방만들기 버튼 클릭 시 대화상대 선택에 있는 사람들 DB에 저장
	$("#s_create_room").click(function() {
		
		// 배열 arr 선언
		var arr = [];
		// 대화상대 선택에 있는 개수만큼 반복문 실행
		for(var i = 0; i < $(".s_invite_p").length; i++) {
			// 대화상대 선택에 있는 div하나씩 돌며 배열에 push해줌
			arr.push($(".s_invite_p").eq(i).text());
		}
		
		// 본인도 채팅참여자에 추가하여 배열에 push해줌
		arr.push("${i.mname}");
		
		// ajax에 전달할 obj
		var obj = {
					"emp_name" : arr,
					"room_title" : $("#s_room_title").val()
				};
		
		// 대화상대 선택 안했을 시
		if($(".s_invite_p").length == 0) {
			swal({
                title: "대화상대가 선택되지 않았습니다.",
                text: "대화할 사원을 선택해주세요!",
                icon: "error",
                closeOnClickOutside: false,
                closeOnEsc: false
            });
			return;
		}
		
		// 방 제목 미입력 시
		if($("#s_room_title").val() == "") {
			swal({
                title: "",
                text: "방 제목을 입력해주세요",
                icon: "error",
                closeOnClickOutside: false,
                closeOnEsc: false
            });
		} else {
			$.ajax({
				url : "<%=request.getContextPath()%>/echo/insertmember"
					, type: "post"
					, data: obj
					, success: function(result) {
						$(".btn-close").trigger('click');
						if(result.includes('실패')) {
							swal({
			                    title: "",
			                    text: result,
			                    icon: "error",
			                    closeOnClickOutside: false,
			                    closeOnEsc: false
			                });
							$("#menu_chat").get(0).click();
						} else {
							swal({
			                    title: "",
			                    text: result,
			                    icon: "success",
			                    closeOnClickOutside: false,
			                    closeOnEsc: false
			                });
							$("#menu_chat").get(0).click();
						}
					}
			});
		}
		
	});
</script> 

<!-- 서브메뉴 눌렀을 때 -->
<script>
	// 채팅 리스트 클릭했을 때
	$("#s_chat_list").click(function() {
		$("#s_menu_box2").css('display', 'block');
		$("#s_menu_box1").css('display', 'none');
		$("#s_chat_list").attr('class', 'btn btn-primary');
		$("#s_emp_list").attr('class', 'btn btn-light');
		$("#s_chat_list").css('border', '1px solid #0d6efd');
		$("#s_emp_list").css('border', '1px solid');
	});
	
	// 채팅 리스트에 있는 대화방 리스트 클릭했을 때
	$(".s_chat_box").click(function() {
		$(".s_chat_box").css('color', 'black');
		$(this).css('color', 'rgb(13, 110, 253)');
	});
	
	// 사원목록 클릭했을 때
	$("#s_emp_list").click(function() {
		$("#s_menu_box1").css('display', 'block');
		$("#s_menu_box2").css('display', 'none');
		$("#s_emp_list").attr('class', 'btn btn-primary');
		$("#s_chat_list").attr('class', 'btn btn-light');
		$("#s_emp_list").css('border', '1px solid #0d6efd');
		$("#s_chat_list").css('border', '1px solid');
	});
	window.resizeTo(500,500);
</script>

<!-- 채팅 리스트에서 방 눌렀을 때 -->
<script>
	$(".s_chat_box").click(function() {
		// hidden으로 넣어준 방 번호 value roomNo 변수에 담아주어 전달
		var roomNo = $(this).children().val();
		$("#s_chat_content_box").load("<%=request.getContextPath()%>/echo/selectroom?room_no=" + roomNo);
	});
    
</script>
</html>