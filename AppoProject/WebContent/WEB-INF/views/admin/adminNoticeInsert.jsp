<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>adminBaseForm</title>
<style>
.nav {
	background-color: rgb(44, 62, 80);
	height: 100%;
}

.nav a {
	color: black;
}

.nav a:hover {
	color: white;
}

.navbar {
	background-color: rgb(44, 62, 80);
}

span {
	color: rgb(149, 165, 166);
}
</style>
</head>
<body>
	<div class="container-fluid">
		<%@ include file="adminHeader.jsp"%>
		<div class="row">
			<%@ include file="adminSidebar.jsp"%>
			<div class="col-md-10">
				<!-- 컨텐트 내용을 추가 -->
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-4">
							<a href="#"
								class="btn btn-info btn-block active my-2 mr-2 ml-2 px-5">공지사항</a>
						</div>
						<div class="col-md-8">
							<h3 style="line-height: 51px;" class="text-center"
								id="admin_notice">notice</h3>
						</div>
					</div>


					<form action="noticeInsert" onsubmit="return validate();" method="post">
						<div class="row">
							<div class="col-md-2">
								<select class="custom-select" name="noticeClass" id="noticeClass" required>
									<option selected style="display: none;" disabled value="">분류 선택</option>
									<option value="일반">일반</option>
									<option value="이벤트">이벤트</option>
									<option value="서비스">서비스</option>
								</select>
							</div>
							<div class="col-md-10">
								<input type="text" class="form-control" id="noticeTitle"
									placeholder="제목을 입력해주세요." name="noticeTitle">
							</div>
							<br>
							<br>
						</div>
						<div class="row">
							<div class="col-md-12">
								<textarea
									style="width: 100%; height: 700px; resize: none; padding: 10px;"
									id="noticeContent" name="noticeContent"
									placeholder="내용을 입력해주세요"></textarea>
							</div>
						</div>
						<div class="row">
							<div class="col-md-10"></div>
							<div class="col-md-2">
								<button type="submit"
									class="btn btn-info btn-block my-1 mr-1 ml-1 px-2 py-1">등록</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
		<script>
			function validate() {
				
				if ($("#noticeTitle").val().trim().length == 0) {
					alert("제목을 입력해 주세요.");
					$("#noticeTitle").focus();
					return false;
				}

				if ($("#noticeContent").val().trim().length == 0) {
					alert("내용을 입력해 주세요.");
					$("#noticeContent").focus();
					return false;
				}
			}
		</script>
		<%@ include file="adminFooter.jsp"%>
</body>
</html>