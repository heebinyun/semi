<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/form-validation.css"
	type="text/css">
<title>Appo_Join_Agree</title>
</head>
<style>
#prespace {
	white-space: pre-wrap;
	/* CSS3*/
	white-space: -moz-pre-wrap;
	/* Mozilla, since 1999 */
	white-space: -pre-wrap;
	/* Opera 4-6 */
	white-space: -o-pre-wrap;
	/* Opera 7 */
	word-wrap: break-all;
	/* Internet Explorer 5.5+ */
}
</style>

<body>


	<%@ include file="../common/header.jsp"%>
	<%@ include file="../common/nav.jsp"%>

	<div class="row">
		<div class="col-md-12">
			<div class="container" id="container_2">
				<div class="py-5">

					<img
						src="<%=request.getContextPath()%>/resources/appoimg/appologo_White.png"
						class="mb-4 rounded mx-auto d-block" width="72" height="auto">
					<h1 class="h2 mb-3 font-weight-bold text-center">회원가입</h1>
					<br>

					<fieldset class="join_contentback">
						<br>

						<form class="form1" action="joinForm"
							method="GET" name="agreeForm" id="form1"
							onsubmit="return validate();">

							<div class="text-center">
								<input type="checkbox" id="check-all" class="check-all">

								<label for="check-all">
									<h5>
										<strong>모두 확인, 동의합니다.</strong>
									</h5> 
								</label>
							</div>

							<div>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="checkbox"
									id="agree1" name="agree1" class="cb"> <label
									for="agree1">&nbsp;만 14세 이상입니다.<strong>(필수)</strong>
								</label>
							</div>

							<div>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="checkbox"
									id="agree2" name="agree2" class="cb"> <label
									for="agree2">&nbsp;이용약관 동의<strong>(필수)</strong>
								</label>

								<!-- 하이퍼링크로 만들기 -->
								&nbsp; <a href="#" data-toggle="modal"
									data-target="#exampleModalScrollable"> <u><small>내용보기</small></u>
								</a>
							</div>

							<div>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="checkbox"
									id="agree3" name="agree3" class="cb"> <label
									for="agree3">&nbsp;개인정보 수집 및 이용 동의<strong>(필수)</strong>
								</label> &nbsp;
								<!-- 하이퍼링크로 만들기 -->
								<a href="#" data-toggle="modal"
									data-target="#exampleModalScrollable"> <u><small>내용보기</small></u>
								</a>
							</div>

							<div>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="checkbox"
									id="agree4" name="agree4" class="cb"> <label
									for="agree4">&nbsp;이메일 마케팅 수신 동의</label>
							</div>

							<div>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="checkbox"
									id="agree5" name="agree5" class="cb"> <label
									for="agree5">&nbsp;생년월일과 성별 및 수집및 이용동의</label>
							</div>

							<div>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="checkbox"
									id="agree6" name="agree6" class="cb"> <label
									for="agree6">&nbsp;개인정보 유효기간 3년 지정(미동의 시 1년)</label>
							</div>

							<hr>

							<small>
								<p class="font-weight-bold ml-3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;개인정보
									수집</p>
							</small>

							<table class="ml-3">
								<tr>
									<th><small>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>필수</strong></small></th>
									<th><small>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</small></th>
								</tr>
								<tr>
									<th class="thcolor"><small>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>목적</strong></small>
									</th>
									<td><small>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;이용자
											식별,서비스 이행을 위한 연락</small></td>
								</tr>
								<tr>
									<th class="thcolor"><small>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>항목</strong></small>
									</th>
									<td><small>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;이름,아이디,비밀번호,이메일</small></td>
								</tr>
								<tr>
									<th class="thcolor"><small>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>보유기간</strong></small></th>
									<td><small>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;회원탈퇴 후
											5일까지</small></td>
								</tr>
							</table>
							<br>

							<table class="ml-3">
								<tr>
									<th><small>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>선택</strong></small></th>
									<th><small>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</small></th>
								</tr>
								<tr>
									<th class="thcolor"><small>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>목적</strong></small>
									</th>
									<td><small>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;맞춤 정보 제공,
											마케팅</small></td>
								</tr>
								<tr>
									<th class="thcolor"><small>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>항목</strong></small>
									</th>
									<td><small>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;성별, 생년월일</small></td>
								</tr>
								<tr>
									<th class="thcolor"><small>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>보유기간</strong></small></th>
									<td><small>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;회원탈퇴 후
											5일까지</small></td>
								</tr>
							</table>
							<br><br>
							
							<button class="btn btn-lg btn-primary btn-block" type="submit">동의하고
								가입하기</button>
						</form>
					</fieldset>

					<p class="mt-5 mb-3 text-muted small text-center">&copy; Appo
						Corp. All Rights Reserved.</p>
				</div>



				<!-- Modal -->
				<div class="modal fade" id="exampleModalScrollable" tabindex="-1"
					role="dialog" aria-labelledby="exampleModalScrollableTitle"
					aria-hidden="true">
					<div class="modal-dialog modal-dialog-scrollable modal-lg"
						role="document">
						<div class="modal-content">
							<div class="modal-header">

								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body">
								<div class="nav-scroller py-1 mb-2">
									<ul class="nav nav-tabs">
										<li class="nav-item"><a class="nav-link show active"
											data-toggle="tab" href="#terms1">이용약관</a></li>
										<li class="nav-item"><a class="nav-link"
											data-toggle="tab" href="#terms2">개인정보 처리방침</a></li>
										<li class="nav-item"><a class="nav-link"
											data-toggle="tab" href="#terms3">청소년 보호정책</a></li>
										<li class="nav-item"><a class="nav-link"
											data-toggle="tab" href="#terms4">전자금융거래 약관</a></li>
									</ul>
									<div id="myTabContent" class="tab-content">
										<div class="tab-pane fade show active" id="terms1">
											<pre style="white-space: pre-wrap" id="prespace"
												class="modal-contents">


제1조(목적)
이 약관은 아포(전자거래 사업자)이 운영하는 홈페이지(이하 "쇼핑몰"이라 한다)에서 제공하는 인터넷 관련 서비스(이하 "서비스"라 한다)를 이용함에 있어 아포와 이용자의 권리·의무 및 책임사항을 규정함을 목적으로 합니다.
※ 「PC통신 등을 이용하는 전자거래에 대해서도 그 성질에 반하지 않는 한 이 약관을 준용합니다」


제2조(정의)
① "쇼핑몰" 이란 사업자가 재화 또는 용역을 이용자에게 제공하기 위하여 컴퓨터 등 정보통신설비를 이용하여 재화 또는 용역을 거래할 수 있도록 설정한 가상의 영업장을 말하며, 아울러 쇼핑몰을 운영하는 사업자의 의미로도 사용합니다.

② "이용자"란 "쇼핑몰"에 접속하여 이 약관에 따라 "쇼핑몰"이 제공하는 서비스를 받는 회원 및 비회원을 말합니다.

③ "회원"이라 함은 "쇼핑몰"에 개인정보를 제공하여 회원등록을 한 자로서, "쇼핑몰"의 정보를 지속적으로 제공받으며, "쇼핑몰"이 제공하는 서비스를 계속적으로 이용할 수 있는 자를 말합니다.

④ "비회원"이라 함은 회원에 가입하지 않고 "쇼핑몰"이 제공하는 서비스를 이용하는 자를 말합니다.


제3조 (약관의 명시와 개정)
① "쇼핑몰"은 이 약관의 내용과 상호, 영업소 소재지, 대표자의 성명, 사업자등록번호, 연락처(전화, 팩스, 전자우편 주소 등) 등을 이용자가 알 수 있도록 사이트의 초기 서비스화면(전면)에 게시합니다.

② "쇼핑몰"은 약관의 규제 등에 관한 법률, 전자거래기본법, 전자서명법, 정보통신망 이용촉진 등에 관한 법률, 방문판매 등에 관한법률, 소비자보호법 등 관련법을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다.

③ "쇼핑몰"이 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 홈페이지의 초기화면에 그 적용일자 7일 이전부터 적용일자 전일까지 공지합니다.

④ "쇼핑몰"이 약관을 개정할 경우에는 그 개정약관은 그 적용일자 이후에 체결되는 계약에만 적용되고 그 이전에 이미 체결된 계약에 대해서는 개정 전의 약관조항이 그대로 적용됩니다. 다만 이미 계약을 체결한 이용자가 개정약관 조항의 적용을 받기를 원하는 뜻을 제3항에 의한 개정약관의 공지기간 내에 "쇼핑몰"에 송신하여 "쇼핑몰"의 동의를 받은 경우에는 개정약관 조항이 적용됩니다.

⑤ 이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 정부가 제정한 전자거래소비자보호지침 및 관계법령 또는 상관례에 따릅니다.


제4조(서비스의 제공 및 변경)
① "쇼핑몰"은 다음과 같은 업무를 수행합니다.
1. 재화 또는 용역에 대한 정보 제공 및 구매계약의 체결
2. 구매계약이 체결된 재화 또는 용역의 배송
3. 기타 "쇼핑몰"이 정하는 업무

② "쇼핑몰"은 재화의 품절 또는 기술적 사양의 변경 등의 경우에는 장차 체결되는 계약에 의해 제공할 재화·용역의 내용을 변경할 수 있습니다. 이 경우에는 변경된 재화·용역의 내용 및 제공일자를 명시하여 현재의 재화·용역의 내용을 게시한 곳에 그 제공일자 이전 7일부터 공지합니다.

③ "쇼핑몰"이 제공하기로 이용자와 계약을 체결한 서비스의 내용을 재화의 품절 또는 기술적 사양의 변경 등의 사유로 변경할 경우에는 "쇼핑몰"은 이로 인하여 이용자가 입은 손해를 배상합니다. 단, "쇼핑몰"에 고의 또는 과실이 없는 경우에는 그러하지 아니합니다.


제5조(서비스의 중단)
① "쇼핑몰"은 컴퓨터 등 정보통신설비의 보수점검·교체 및 고장, 통신의 두절 등의 사유가 발생한 경우에는 서비스의 제공을 일시적으로 중단할 수 있습니다.

② 제1항에 의한 서비스 중단의 경우에는 "쇼핑몰"은 제8조에 정한 방법으로 이용자에게 통지합니다.

③ "쇼핑몰"은 제1항의 사유로 서비스의 제공이 일시적으로 중단됨으로 인하여 이용자 또는 제3자가 입은 손해에 대하여 배상합니다. 단 "쇼핑몰"에 고의 또는 과실이 없는 경우에는 그러하지 아니합니다.


제6조(회원가입)
① 이용자는 "쇼핑몰"이 정한 가입 양식에 따라 회원정보를 기입한 후 이 약관에 동의한다는 의사표시를 함으로서 회원가입을 신청합니다.

② "쇼핑몰"은 제1항과 같이 회원으로 가입할 것을 신청한 이용자 중 다음 각 호에 해당하지 않는 한 회원으로 등록합니다.
1. 가입신청자가 이 약관 제7조 제3항에 의하여 이전에 회원자격을 상실한 적이 있는 경우, 다만 제7조 제3항에 의한 회원자격 상실 후 3년이 경과한 자로서 "쇼핑몰"의 회원재가입 승낙을 얻은 경우에는 예외로 한다.
2. 등록 내용에 허위, 기재누락, 오기가 있는 경우
3. 기타 회원으로 등록하는 것이 "쇼핑몰"의 기술상 현저히 지장이 있다고 판단되는 경우

③ 회원가입계약의 성립 시기는 "쇼핑몰"의 승낙이 회원에게 도달한 시점으로 합니다.

④ 회원은 제15조 제1항에 의한 등록사항에 변경이 있는 경우, 즉시 전자우편 기타 방법으로 "쇼핑몰"에 대하여 그 변경사항을 알려야 합니다.


제7조(회원 탈퇴 및 자격 상실 등)
① 회원은 "쇼핑몰"에 언제든지 탈퇴를 요청할 수 있으며 "쇼핑몰"은 즉시 회원탈퇴를 처리합니다.

② 회원이 다음 각 호의 사유에 해당하는 경우, "쇼핑몰"은 회원자격을 제한 및 정지시킬 수 있습니다.
1. 가입 신청 시에 허위 내용을 등록한 경우
2. "쇼핑몰"을 이용하여 구입한 재화·용역 등의 대금, 기타 "쇼핑몰" 이용에 관련하여 회원이 부담하는 채무를 기일에 지급하지 않는 경우
3. 다른 사람의 "쇼핑몰" 이용을 방해하거나 그 정보를 도용하는 등 전자거래질서를 위협하는 경우
4. "쇼핑몰"을 이용하여 법령과 이 약관이 금지하거나 공서양속에 반하는 행위를 하는 경우

③ "쇼핑몰"이 회원 자격을 제한·정지 시킨 후, 동일한 행위가 2회 이상 반복되거나 30일 이내에 그 사유가 시정되지 아니하는 경우 "쇼핑몰"은 회원자격을 상실시킬 수 있습니다.

④ "쇼핑몰"이 회원자격을 상실시키는 경우에는 회원등록을 말소합니다. 이 경우 회원에게 이를 통지하고, 회원등록 말소 전에 소명할 기회를 부여합니다.


제8조(회원에 대한 통지)
① "쇼핑몰"이 회원에 대한 통지를 하는 경우, 회원이 "쇼핑몰"에 제출한 전자우편 주소로 할 수 있습니다.

② "쇼핑몰"은 불특정다수 회원에 대한 통지의 경우 1주일이상 "쇼핑몰" 게시판에 게시함으로서 개별 통지에 갈음할 수 있습니다.


제9조(구매신청)
"쇼핑몰" 이용자는 "쇼핑몰"상에서 이하의 방법에 의하여 구매를 신청합니다.
1. 성명, 비밀번호, 전화번호, 핸드폰번호, 주소, E-MAIL 입력
2. 재화 또는 용역의 선택
3. 결제방법의 선택
4. 이 약관에 동의한다는 표시(예, 마우스 클릭)


제10조 (계약의 성립)
① "쇼핑몰"은 제9조와 같은 구매신청에 대하여 다음 각 호에 해당하지 않는 한 승낙합니다.
1. 신청 내용에 허위, 기재누락, 오기가 있는 경우
2. 미성년자가 담배, 주류 등 청소년보호법에서 금지하는 재화 및 용역을 구매하는 경우
3. 기타 구매신청에 승낙하는 것이 "쇼핑몰" 기술상 현저히 지장이 있다고 판단하는 경우

② "쇼핑몰"의 승낙이 제12조 제1항의 수신확인통지형태로 이용자에게 도달한 시점에 계약이 성립한 것으로 봅니다.


제11조(지급방법)
"쇼핑몰"에서 구매한 재화 또는 용역에 대한 대금지급방법은 다음 각 호의 하나로 할 수 있습니다.
1. 계좌이체
2. 신용카드결제
3. 온라인무통장입금
4. 전자화폐에 의한 결제
5. 수령 시 대금지급 등


제12조(수신확인통지·구매신청 변경 및 취소)
① "쇼핑몰"은 이용자의 구매신청이 있는 경우 이용자에게 수신확인통지를 합니다.

② 수신확인통지를 받은 이용자는 의사표시의 불일치 등이 있는 경우에는 수신확인통지를 받은 후 즉시 구매신청 변경 및 취소를 요청할 수 있습니다.

③ "쇼핑몰"은 배송 전 이용자의 구매신청 변경 및 취소 요청이 있는 때에는 지체 없이 그 요청에 따라 처리합니다.


제13조(배송)
"쇼핑몰"은 이용자가 구매한 재화에 대해 배송수단, 수단별 배송비용 부담자, 수단별 배송기간 등을 명시합니다. 만약 "쇼핑몰"의 고의·과실로 약정 배송기간을 초과한 경우에는 그로 인한 이용자의 손해를 배상합니다.


제14조(환급, 반품 및 교환)
① "쇼핑몰"은 이용자가 구매 신청한 재화 또는 용역이 품절 등의 사유로 재화의 인도 또는 용역의 제공을 할 수 없을 때에는 지체 없이 그 사유를 이용자에게 통지하고, 사전에 재화 또는 용역의 대금을 받은 경우에는 대금을 받은 날부터 3일 이내에, 그렇지 않은 경우에는 그 사유발생일로부터 3일 이내에 계약해제 및 환급절차를 취합니다.

② 다음 각 호의 경우에는 "쇼핑몰"은 배송된 재화일지라도 재화를 반품 받은 다음 영업일 이내에 이용자의 요구에 따라 즉시 환급, 반품 및 교환 조치를 합니다. 다만 그 요구기한은 배송된 날로부터 20일 이내로 합니다.
1. 배송된 재화가 주문내용과 상이하거나 "쇼핑몰"이 제공한 정보와 상이할 경우
2. 배송된 재화가 파손, 손상되었거나 오염되었을 경우
3. 재화가 광고에 표시된 배송기간보다 늦게 배송된 경우
4. 방문판매 등에 관한 법률 제18조에 의하여 광고에 표시하여야 할 사항을 표시하지 아니한 상태에서 이용자의 청약이 이루어진 경우


제15조(개인정보보호)
① "쇼핑몰"은 이용자의 정보 수집시 구매계약 이행에 필요한 최소한의 정보를 수집합니다.
다음 사항을 필수사항으로 하며 그 외 사항은 선택사항으로 합니다.
1. 희망ID(회원의 경우)
2. 비밀번호(회원의 경우)
3. 이름
4. 별명
5. E-MAIL
6. 주소
7. 전화번호
8. 휴대번호
9. 메일링서비스
10. SMS 수신여부

② "쇼핑몰"이 이용자의 개인 식별이 가능한 개인정보를 수집하는 때에는 반드시 당해 이용자의 동의를 받습니다.

③ 제공된 개인정보는 당해 이용자의 동의 없이 목적 외의 이용이나 제3자에게 제공할 수 없으며, 이에 대한 모든 책임은 "쇼핑몰"이 집니다. 다만, 다음의 경우에는 예외로 합니다.
1. 배송업무상 배송업체에게 배송에 필요한 최소한의 이용자의 정보(성명, 주소, 전화번호)를 알려주는 경우
2. 통계작성, 학술연구 또는 시장조사를 위하여 필요한 경우로서 특정 개인을 식별할 수 없는 형태로 제공하는 경우

④ "쇼핑몰"이 제2항과 제3항에 의해 이용자의 동의를 받아야 하는 경우에는 개인정보관리 책임자의 신원(소속, 성명 및 전화번호 기타 연락처), 정보의 수집목적 및 이용목적, 제3자에 대한 정보제공 관련사항(제공 받는자, 제공목적 및 제공할 정보의 내용)등 정보통신망이용촉진 등에 관한 법률 제16조 제3항이 규정한 사항을 미리 명시하거나 고지해야 하며 이용자는 언제든지 이 동의를 철회할 수 있습니다.

⑤ 이용자는 언제든지 "쇼핑몰"이 가지고 있는 자신의 개인정보에 대해 열람 및 오류정정을 요구할 수 있으며 "쇼핑몰"은 이에 대해 지체 없이 필요한 조치를 취할 의무를 집니다. 이용자가 오류의 정정을 요구한 경우에는 "쇼핑몰"은 그 오류를 정정할 때까지 당해 개인정보를 이용하지 않습니다.

⑥ "쇼핑몰"은 개인정보 보호를 위하여 관리자를 한정하여 그 수를 최소화하며 신용카드, 은행계좌 등을 포함한 이용자의 개인정보의 분실, 도난, 유출, 변조 등으로 인한 이용자의 손해에 대하여 모든 책임을 집니다.

⑦ "쇼핑몰" 또는 그로부터 개인정보를 제공받은 제3자는 개인정보의 수집목적 또는 제공받은 목적을 달성한 때에는 당해 개인정보를 지체 없이 파기합니다.


제16조("쇼핑몰"의 의무)
① "쇼핑몰"은 법령과 이 약관이 금지하거나 공서양속에 반하는 행위를 하지 않으며 이 약관이 정하는 바에 따라 지속적이고, 안정적으로 재화·용역을 제공하는 데 최선을 다하여야 합니다.

② "쇼핑몰"은 이용자가 안전하게 인터넷 서비스를 이용할 수 있도록 이용자의 개인정보(신용정보 포함)보호를 위한 보안 시스템을 갖추어야 합니다.

③ "쇼핑몰"이 상품이나 용역에 대하여 「표시·광고의 공정화에 관한 법률」 제3조 소정의 부당한 표시·광고행위를 함으로써 이용자가 손해를 입은 때에는 이를 배상할 책임을 집니다.

④ "쇼핑몰"은 이용자가 원하지 않는 영리목적의 광고성 전자우편을 발송하지 않습니다.


제17조( 회원의 ID 및 비밀번호에 대한 의무)
① 제15조의 경우를 제외한 ID와 비밀번호에 관한 관리책임은 회원에게 있습니다.

② 회원은 자신의 ID 및 비밀번호를 제3자에게 이용하게 해서는 안 됩니다.

③ 회원이 자신의 ID 및 비밀번호를 도난당하거나 제3자가 사용하고 있음을 인지한 경우에는 바로 "쇼핑몰"에 통보하고 "쇼핑몰"의 안내가 있는 경우에는 그에 따라야 합니다.


제18조(이용자의 의무)
이용자는 다음 행위를 하여서는 안 됩니다.
1. 신청 또는 변경 시 허위내용의 등록
2. "쇼핑몰"에 게시된 정보의 변경
3. "쇼핑몰"이 정한 정보 이외의 정보(컴퓨터 프로그램 등)의 송신 또는 게시
4. "쇼핑몰" 기타 제3자의 저작권 등 지적재산권에 대한 침해
5. "쇼핑몰" 기타 제3자의 명예를 손상시키거나 업무를 방해하는 행위
6. 외설 또는 폭력적인 메시지·화상·음성 기타 공서양속에 반하는 정보를 홈페이지에 공개 또는 게시하는 행위


제19조(연결"쇼핑몰"과 피연결"쇼핑몰" 간의 관계)
① 상위 "쇼핑몰"과 하위 "쇼핑몰"이 하이퍼링크(예: 하이퍼링크의 대상에는 문자, 그림 및 동화상 등이 포함됨)방식 등으로 연결된 경우, 전자를 연결 "쇼핑몰"(웹 사이트)이라고 하고 후자를 피연결 "쇼핑몰"(웹사이트)이라고 합니다.

② 연결 "쇼핑몰"은 피연결 "쇼핑몰"이 독자적으로 제공하는 재화·용역에 의하여 이용자와 행하는 거래에 대해서 보증 책임을 지지 않는다는 뜻을 연결 "쇼핑몰"의 사이트에서 명시한 경우에는 그 거래에 대한 보증 책임을 지지 않습니다.


제20조(저작권의 귀속 및 이용제한)
① "쇼핑몰"이 작성한 저작물에 대한 저작권 기타 지적재산권은 "쇼핑몰"에 귀속합니다.

② 이용자는 "쇼핑몰"을 이용함으로써 얻은 정보를 "쇼핑몰"의 사전 승낙 없이 복제, 송신, 출판, 배포, 방송 기타 방법에 의하여 영리목적으로 이용하거나 제3자에게 이용하게 하여서는 안 됩니다.


제21조(분쟁해결)
① "쇼핑몰"은 이용자가 제기하는 정당한 의견이나 불만을 반영하고 그 피해를 보상처리하기 위하여 피해보상처리기구를 설치·운영합니다.

② "쇼핑몰"은 이용자로부터 제출되는 불만사항 및 의견은 우선적으로 그 사항을 처리합니다. 다만, 신속한 처리가 곤란한 경우에는 이용자에게 그 사유와 처리일정을 즉시 통보해 드립니다.

③ "쇼핑몰"과 이용자간에 발생한 분쟁은 전자거래기본법 제28조 및 동 시행령 제15조에 의하여 설치된 전자거래분쟁조정위원회의 조정에 따를 수 있습니다.


제22조(재판권 및 준거법)
① "쇼핑몰"과 이용자간에 발생한 전자거래 분쟁에 관한 소송은 민사소송법상의 관할법원에 제기합니다.

② "쇼핑몰"과 이용자간에 제기된 전자거래 소송에는 한국법을 적용합니다.</pre>
										</div>
										<div class="tab-pane fade" id="terms2">
											<pre style="white-space: pre-wrap" id="prespace">


1. 개인정보 처리방침이란?
주식회사 아포(이하"회사")는 이용자의 ‘동의를 기반으로 개인정보를 수집·이용 및 제공’하고 있으며, ‘이용자의 권리 (개인정보 자기결정권)를 적극적으로 보장’합니다.
회사는 정보통신서비스제공자가 준수하여야 하는 대한민국의 관계 법령 및 개인정보보호 규정, 가이드라인을 준수하고 있습니다.
“개인정보처리방침”이란 이용자의 소중한 개인정보를 보호함으로써 이용자가 안심하고 서비스를 이용할 수 있도록 회사가 준수해야 할 지침을 의미합니다.

본 개인정보처리방침은 회사가 제공하는 아포계정 기반의 서비스(이하 ‘서비스'라 함)에 적용됩니다.

2. 개인정보 수집
서비스 제공을 위한 필요 최소한의 개인정보를 수집하고 있습니다.
회원 가입 시 또는 서비스 이용 과정에서 홈페이지를 통해 아래와 같은 서비스 제공을 위해 필요한 최소한의 개인정보를 수집하고 있습니다.

[아포계정]
필수
이메일, 아이디, 비밀번호, 이름, 연락처, 서비스 이용내역, 서비스 내 구매 및 결제 내역

선택
생년월일, 성별, 배송지정보(수령인명, 배송지 주소, 전화번호)

[본인인증 시]
이름, 성별, 생년월일, 휴대폰번호, 통신사업자, 내/외국인 여부, 암호화된 이용자 확인값(CI), 중복가입확인정보(DI))

[법정대리인 동의 시]
법정대리인 정보(이름, 성별, 생년월일, 휴대폰번호, 통신사업자, 내/외국인 여부, 암호화된 이용자 확인값(CI), 중복가입확인정보(DI))

[유료서비스 이용 시]
신용카드 결제 시: 카드번호(일부), 카드사명 등
계좌이체 시: 예금주명, 계좌번호, 계좌은행 등

[환불처리 시]
계좌은행, 계좌번호, 예금주명

[현금영수증 발행 시]
휴대폰번호, 현금영수증 카드번호

일부 서비스에서는 특화된 여러 기능들을 제공하기 위해 ‘카카오계정’에서 공통으로 수집하는 정보 이외에 이용자에게 동의를 받고
추가적인 개인정보를 수집할 수 있습니다.
필수정보란? : 해당 서비스의 본질적 기능을 수행하기 위한 정보
선택정보란? : 보다 특화된 서비스를 제공하기 위해 추가 수집하는 정보 (선택 정보를 입력하지 않은 경우에도 서비스 이용 제한은 없습니다.)

개인정보를 수집하는 방법은 다음과 같습니다.
개인정보를 수집하는 경우에는 반드시 사전에 이용자에게 해당 사실을 알리고 동의를 구하고 있으며, 아래와 같은 방법을 통해 개인정보를 수집합니다.

회원가입 및 서비스 이용 과정에서 이용자가 개인정보 수집에 대해 동의를 하고 직접 정보를 입력하는 경ㅈ우
제휴 서비스 또는 단체 등으로부터 개인정보를 제공받은 경우
고객센터를 통한 상담 과정에서 웹페이지, 메일, 팩스, 전화 등
온·오프라인에서 진행되는 이벤트/행사 등 참여
서비스 이용 과정에서 이용자로부터 수집하는 개인정보는 아래와 같습니다.

서비스 간 제휴, 연계 등으로 제3자로부터 개인정보를 제공받고 있습니다.

3. 개인정보 이용
회원관리, 서비스 제공·개선, 신규 서비스 개발 등을 위해 이용합니다.
회원 가입 시 또는 서비스 이용 과정에서 홈페이지 또는 개별 어플리케이션이나 프로그램 등을 통해 아래와 같이 서비스 제공을 위해 필요한 최소한의 개인정보를 수집하고 있습니다.
회원 식별/가입의사 확인, 본인/연령 확인, 부정이용 방지
만 14세 미만 아동 개인정보 수집 시 법정 대리인 동의여부 확인, 법정 대리인 권리행사 시 본인 확인
이용자간 메시지 전송, 친구등록 및 친구추천 기능의 제공
친구에게 활동내역을 알리거나 이용자 검색, 등록 등의 기능 제공
신규 서비스 개발, 다양한 서비스 제공, 문의사항 또는 불만처리, 공지사항 전달
유료서비스 이용 시 컨텐츠 등의 전송이나 배송·요금 정산
서비스의 원활한 운영에 지장을 주는 행위(계정 도용 및 부정 이용 행위 등 포함)에 대한 방지 및 제재
인구통계학적 특성과 이용자의 관심, 기호, 성향의 추정을 통한 맞춤형 컨텐츠 추천 및 마케팅에 활용
음성명령 처리 및 음성인식 향상, 개인화 서비스 제공
서비스 이용 기록, 접속 빈도 및 서비스 이용에 대한 통계, 프라이버시 보호 측면의 서비스 환경 구축, 서비스 개선에 활용
4. 개인정보 제공
카카오는 이용자의 별도 동의가 있는 경우나 법령에 규정된 경우를 제외하고는 이용자의 개인정보를 제3자에게 제공하지 않습니다.
제3자 서비스와의 연결을 위해 아래와 같이 개인정보를 제공하고 있습니다.
카카오는 이용자의 사전 동의 없이 개인정보를 제3자에게 제공하지 않습니다. 다만, 이용자가 외부 제휴사 등의 서비스를 이용하기 위하여 필요한 범위 내에서 이용자의 동의를 얻은 후에 개인정보를 제3자에게 제공하고 있습니다.
서비스 제공을 위해 아래와 같은 업무를 위탁하고 있습니다.
서비스 제공에 있어 필요한 업무 중 일부를 외부 업체로 하여금 수행하도록 개인정보를 위탁하고 있습니다. 그리고 위탁 받은 업체가 관계 법령을 준수하도록 관리·감독하고 있습니다.
5. 개인정보 파기
개인정보는 수집 및 이용목적이 달성되면 지체없이 파기하며, 절차 및 방법은 아래와 같습니다.
전자적 파일 형태인 경우 복구 및 재생되지 않도록 안전하게 삭제하고, 그 밖에 기록물, 인쇄물, 서면 등의 경우 분쇄하거나 소각하여 파기합니다.
다만, 내부 방침에 따라 일정 기간 보관 후 파기하는 정보는 아래와 같습니다. 

1)아래 정보는 탈퇴일부터 최대 1년간 보관 후 파기합니다.
안내메일 발송 및 CS문의 대응을 위해 카카오계정과 탈퇴안내 이메일 주소를 암호화하여 보관
서비스 부정이용 기록
2)아래 정보는 프로젝트 모금함 최종 종료일부터 3년 경과 후 파기합니다.(단, 미선정의 경우, 미선일로부터 90일 경과 후 파기)
카카오같이가치 > 지원대상 선정 시 수집한 증빙서류
또한, 카카오는 ‘개인정보 유효기간제’에 따라 1년간 서비스를 이용하지 않은 회원의 개인정보를 별도로 분리 보관 또는 삭제하고 있으며, 분리 보관된 개인정보는 4년간 보관 후 지체없이 파기합니다.

이 외에 법령에 따라 일정기간 보관해야 하는 개인정보 및 해당 법령은 아래 표와 같습니다.

6. 기타
카카오는 여러분의 권리를 보호합니다.
이용자(만 14세 미만인 경우 법정 대리인)는 언제든지 자신의 개인정보를 조회하거나 수정할 수 있으며, 수집・이용에 대한 동의 철회 또는 가입 해지를 요청할 수 있습니다.

보다 구체적으로는 서비스 내 설정을 통한 회원정보 수정 기능이나 회원탈퇴 기능을 이용할 수 있고, 고객센터를 통해 서면, 전화 또는 이메일로 요청하시면 지체 없이 조치하겠습니다.

개인정보의 오류에 대한 정정을 요청하신 경우 정정을 완료하기 전까지 해당 개인정보를 이용 또는 제공하지 않습니다.

또한, '온라인 맞춤형 광고 개인정보보호 가이드 라인'에 따른 이용자 권리보호를 위한 페이지도 제공하고 있습니다.

개인정보처리방침이 변경되는 경우
법률이나 서비스의 변경사항을 반영하기 위한 목적 등으로 개인정보처리방침을 수정할 수 있습니다. 개인정보처리방침이 변경되는 경우 카카오는 변경 사항을 게시하며, 변경된 개인정보처리방침은 게시한 날로부터 7일 후부터 효력이 발생합니다. 
다만, 수집하는 개인정보의 항목, 이용목적의 변경 등과 같이 이용자 권리의 중대한 변경이 발생할 때에는 최소 30일 전에 미리 알려드리겠습니다.

공고일자: 2019년 12월 24일
시행일자: 2019년 12월 31일
                                                </pre>
										</div>
										<div class="tab-pane fade" id="terms3">
											<pre style="white-space: pre-wrap" id="prespace">


1. 청소년 보호를 위한 목표 및 기본 원칙
청소년이 정신적·신체적으로 유해한 환경으로부터 보호받고 유익한 환경을 조성하도록 노력하며, 안전하게 인터넷을 이용할 수 있는 서비스를 제공하기 위해 청소년보호정책을 명시하고 있습니다.

2. 청소년 보호 장치
청소년이 아무런 제한장치 없이 유해정보에 노출되지 않도록 청소년유해매체물에 대해서는 인증장치를 마련·적용하고 있으며, 유해정보가 노출되지 않게 하기 위한 예방 차원의 조치를 강구하고 있습니다.

3. 유해정보로 인한 피해상담 및 고충처리
유해정보로 인한 피해상담 및 고충처리를 위한 전문인력을 배치하여 구제조치의 지연 및 처리 미숙으로 인한 피해가 확산되지 않도록 노력하고 있으며 자체적으로 처리가 곤란할 경우 피해 특성별 관련기관을 안내해 드리고 있습니다.

4. 유해정보에 대한 청소년접근제한 및 관리조치
불법적이거나 청소년에 유해한 키워드에 대한 금칙어를 일반 검색을 포함한 각종 서비스에 확대 적용하고 있으며, 성인 인증장치가 마련된 서비스에 대해서는 이용범위를 제한하게 하는 등 체계적인 관리를 하고 있습니다.

5. 유해정보로부터 청소년을 보호하기 위한 교육
청소년보호담당자 및 각 서비스 담당자들을 대상으로 청소년 보호를 위한 각종 관련 법령 및 제재기준, 유해정보 발견시 대처방법, 위반사항 처리에 대한 보고절차 등을 교육하고 있습니다.

6. 전체 이용자들의 인식제고를 통한 청소년 보호
서비스이용약관 등을 통하여 불건전한 행위를 할 경우 이용제한 또는 민·형사상의 책임을 받을 수 있음을 고지하고 있으며, 신종 유해정보가 발생했을 경우 공지사항 또는 이메일을 통하여 이를 신속히 전파함으로써 청소년 및 전체 이용자를 보호하고 있습니다. 또한 각종 정보건전화 교육 및 캠페인 등을 통하여 네티켓 의식 고취를 위하여 노력하고 있습니다.

7. 청소년보호책임자 및 담당자의 지정
아래와 같이 청소년보호책임자 및 청소년보호담당자를 지정하여 청소년유해정보의 차단 및 관리, 청소년유해정보로부터의 청소년보호정책을 수립하는 등 청소년보호업무를 수행하고 있습니다.</pre>
										</div>
										<div class="tab-pane fade" id="terms4">
											<pre style="white-space: pre-wrap" id="prespace">


제1장 통칙
제1조 (목적)
본 약관은 주식회사 OOO(이하 '회사'라 합니다)가 제공하는 전자금융거래서비스를 아포APPO의 인터넷사이트 등(이하 ‘인터넷사이트’라 합니다)을 통하여 가입한 이용자가 온라인 또는 오프라인으로 이용하는 경우, 회사와 이용자 간 전자금융거래의 법률관계를 정함에 그 목적이 있습니다.

제2조 (정의)
① 이 약관에서 정하는 용어의 정의는 다음 각호와 같습니다.
1. ‘전자금융거래’라 함은 회사가 전자적 장치를 통하여 전자금융거래서비스를 제공하고, 이용자가 회사의 종사자와 직접 대면하거나 의사소통을 하지 아니하고 자동화된 방식으로 이를 이용하는 거래를 말합니다.
2. ‘전자지급수단’이라 함은 선불전자지급수단, 신용카드 등 전자금융거래법 제2조 제11호에서 정하는 전자적 방법에 따른 지급수단을 말합니다.
3. ‘전자지급거래’라 함은 자금을 주는 자(이하 ‘지급인’이라 합니다)가 회사로 하여금 전자지급수단을 이용하여 자금을 받는 자(이하 ‘수취인’이라 합니다)에게 자금을 이동하게 하는 전자금융거래를 말합니다.
4. ‘전자적 장치’ 라 함은 전자금융거래정보를 전자적 방법으로 전송하거나 처리하는데 이용되는 장치로서 현금자동지급기, 자동입출금기, 지급용단말기, 컴퓨터, 전화기 그 밖에 전자적 방법으로 정보를 전송하거나 처리하는 장치를 말합니다.
5. ‘접근매체’라 함은 전자금융거래에 있어서 거래지시를 하거나 이용자 및 거래내용의 진실성과 정확성을 확보하기 위하여 사용되는 수단 또는 정보로서, 전자식 카드 및 이에 준하는 전자적 정보(신용카드번호를 포함합니다), 전자서명법상의 전자서명생성정보 및 인증서, 이상의 수단이나 정보를 사용하는데 필요한 비밀번호, 금융기관 또는 전자금융업자에 등록된 이용자번호 및 이용자의 생체정보 등 전자금융거래법 제2조 제10호에서 정하고 있는 것을 말합니다.
6. ‘전자금융거래서비스’ 또는 ‘서비스’라 함은 회사가 이용자에게 제공하는 제4조 기재의 서비스를 말합니다.
7. ‘이용자’라 함은 제2장 내지 제4장에서 달리 정한 것을 제외하고는 본 이용약관에 동의하고 회사가 제공하는 전자금융거래서비스를 이용하는 회원을 말합니다.
8. '거래지시'라 함은 이용자가 전자금융거래계약에 따라 금융기관 또는 전자금융업자에게 전자금융거래의 처리를 지시하는 것을 말합니다.
9. '오류'라 함은 이용자의 고의 또는 과실 없이 전자금융거래가 전자금융거래계약 또는 이용자의 거래지시에 따라 이행되지 아니한 경우를 말합니다.
10. '이용자번호'란 이용자의 동일성 식별과 서비스 이용을 위하여 이용자가 설정하고 회사가 승인한 숫자와 문자의 조합을 말합니다.
11. '비밀번호'란 이용자의 동일성 식별과 회원정보의 보호를 위하여 이용자가 설정하고 회사가 승인한 숫자와 문자의 조합을 말합니다.
12. ‘가맹점’이란 회사와의 계약에 따라 전자지급수단에 의한 거래에 있어서 이용자에게 재화 또는 용역을 온라인 또는 오프라인으로 제공하는 자를 말합니다.
13. ‘G마켓 선물권’이란 일정한 금액에 대한 전자정보가 기록되어 있다는 것이 기재된 증표를 온라인상으로 조회 및 사용이 가능한 상품권(이하 ‘온라인 선물권’ 또는 ‘선물권’이라 함)으로서 유효기간 내에 잔액 범위 내에서 사용횟수에 제한 없이 자유롭게 선물권 면액에 상당하는 물품 또는 용역 ( 이하 " 물품 등 " 이라 함 ) 을 제공받을 수 있는 금액형 선물권이며, G마켓 (www.gmarket.co.kr)상에서만 사용가능한 선물권을 말합니다.
② 본 약관에서 사용하는 용어의 의미는 본 조 및 본 약관 각 장의 정의조항에서 정한 것을 제외하고는 전자금융거래법 등 관련법령이 정한 바에 의합니다.

제3조 (약관의 명시 및 변경)
① 회사는 이용자가 전자금융거래를 하기 전에 본 약관을 인터넷사이트에 게시하고 이용자가 본 약관의 중요한 내용을 확인할 수 있도록 합니다.
② 회사는 이용자의 요청이 있는 경우 전자문서 전송(전자우편을 이용한 전송을 포함합니다), 모사전송, 우편 또는 직접교부의 방식으로 본 약관의 사본을 이용자에게 교부하고 그 약관의 내용을 설명합니다.
③ 회사가 본 약관을 변경하는 때에는 그 시행일 1개월 전에 변경되는 약관을 금융거래정보 입력화면(주문서), 인터넷사이트에 게시하고 이용자에게 통지합니다. 다만, 이용자가 이의를 제기할 경우 회사는 이용자에게 적절한 방법으로 약관 변경내용을 통지하였음을 확인해 줍니다.
④ 이용자는 제3항의 규정에 따른 약관의 변경내용이 게시되거나 통지된 후부터 변경되는 약관의 시행일 직전 영업일까지 전자금융거래의 계약을 해지할 수 있습니다. 전단의 기간 안에 이용자가 약관의 변경내용에 대하여 이의를 제기하지 아니하는 경우에는 약관의 변경을 승인한 것으로 봅니다.
⑤ 회사는 법령의 개정으로 인하여 긴급하게 약관을 변경하는 때에는 변경된 약관을 즉시 인터넷사이트(전자적 장치)에 최소 1월 이상 게시하고 이용자에게 통지합니다.
제4조 (전자금융거래서비스의 구성 및 내용)
① 전자금융거래서비스는 다음 각호의 서비스로 구성되며 회사는 각 서비스의 자세한 내용을 인터넷사이트에 별도 게시합니다.
1. 전자지급결제대행서비스
2. 결제대금예치서비스 (매매보호서비스)
3. 선불전자지급수단발행관리서비스
② 회사는 필요시 이용자에 사전 고지하고 서비스의 내용을 변경할 수 있습니다.

제5조 (거래내용의 확인)
① 회사는 인터넷사이트의 해당 서비스 조회 화면을 통하여 각 이용자의 거래내용(이용자의 '오류정정 요구사실 및 처리결과에 관한 사항'을 포함합니다)을 확인할 수 있도록 하며, 이용자의 거래내용 서면교부 요청이 있는 경우에는 요청을 받은 날로부터 2주 이내에 모사전송, 우편 또는 직접 교부의 방법으로 거래내용에 관한 서면을 교부합니다.
② 회사는 제1항에 따른 이용자의 거래내용 서면교부 요청을 받은 경우 전자적 장치의 운영장애, 그 밖의 사유로 거래내용을 제공할 수 없는 때에는 즉시 이용자에게 전자문서 전송(전자우편을 이용한 전송을 포함합니다)의 방법으로 그러한 사유를 알려야 하며, 전자적 장치의 운영장애 등의 사유로 거래내용을 제공할 수 없는 기간은 제1항의 거래내용에 관한 서면의 교부기간에 산입하지 아니합니다.
③ 제1항의 대상이 되는 거래내용 중 대상기간이 5년인 것은 다음 각호와 같습니다.
1. 거래계좌의 명칭 또는 번호
2. 거래의 종류 및 금액
3. 거래상대방을 나타내는 정보
4. 거래일시
5. 전자적 장치의 종류 및 전자적 장치를 식별할 수 있는 정보
6. 회사가 전자금융거래의 대가로 받은 수수료
7. 이용자의 출금 동의에 관한 사항
8. 해당 전자금융거래와 관련한 전자적 장치의 접속기록
9. 전자금융거래의 신청 및 조건의 변경에 관한 사항
10. 건당 거래금액이 1만원을 초과하는 전자금융거래에 관한 기록
④ 제1항의 대상이 되는 거래내용 중 확인대상기간이 1년인 것은 다음 각호와 같습니다.
1. 건당 거래금액이 1만원 이하인 소액 전자금융거래에 관한 기록
2. 전자지급수단 이용과 관련된 거래승인에 관한 기록
3. 이용자의 오류정정 요구사실 및 처리결과에 관한 사항
⑤ 이용자가 제1항에서 정한 서면교부를 요청하고자 할 경우 다음의 주소 및 전화번호로 요청할 수 있습니다.


제6조 (오류의 정정 등)
① 이용자는 전자금융거래서비스를 이용함에 있어 오류가 있음을 안 때에는 회사에 대하여 그 정정을 요구할 수 있습니다.
② 회사는 전항의 규정에 따른 오류의 정정요구를 받은 때 또는 스스로 전자금융거래에 오류가 있음을 안 때에는 이를 즉시 조사하여 처리한 후 정정요구를 받은 날 또는 오류가 있음을 안 날부터 2주 이내에 그 오류의 원인과 처리결과를 문서, 전화 또는 전자우편으로 이용자에게 알려 드립니다. 다만, 이용자의 요청이 있는 경우에는 문서로 알려 드립니다.

제7조 (전자금융거래 기록의 생성 및 보존)
① 회사는 이용자가 이용한 전자금융거래의 내용을 추적, 검색하거나 그 내용에 오류가 발생한 경우에 이를 확인하거나 정정할 수 있는 기록을 생성하여 보존합니다.
② 전항의 규정에 따라 회사가 보존하여야 하는 기록의 종류 및 보존기간은 제5조 제3항, 제4항에서 정한 바에 따릅니다.

제8조 (거래지시의 철회)
① 이용자가 전자지급거래를 한 경우, 이용자는 지급의 효력이 발생하기 전까지 본 약관 제5조 제5항에 기재된 연락처로 전자문서를 전송(전자우편을 이용한 전송을 포함합니다)하는 방법 또는 회사가 고지하는 방법으로 거래지시를 철회 할 수 있습니다. 각 서비스별 거래지시 철회의 효력 발생시기는 본 약관 제16조, 제20조 및 제26조에서 정하는 바와 같습니다.
② 이용자는 전자지급의 효력이 발생한 경우에 전자상거래등에서의 소비자보호에 관한 법률 등 관련 법령상 청약의 철회의 방법에 따라 결제대금을 반환 받을 수 있습니다.

제9조 (전자금융거래정보의 제공금지)
회사는 전자금융거래서비스를 제공함에 있어서 취득한 이용자의 인적사항, 이용자의 계좌, 접근매체 및 전자금융거래의 내용과 실적에 관한 정보 또는 자료를 금융실명법 등 법령에 의하거나 이용자의 동의를 얻지 아니하고는 제3자에게 제공, 누설하거나 업무상 목적 외에 사용하지 아니합니다.

제10조 (회사의 책임)
① 회사는 다음 각 호의 어느 하나에 해당하는 사고로 인하여 이용자에게 손해가 발생한 경우에는 그 손해를 배상할 책임을 집니다.
1. 접근매체의 위조나 변조로 발생한 사고
2. 계약체결 또는 거래지시의 전자적 전송이나 처리 과정에서 발생한 사고
3. 전자금융거래를 위한 전자적 장치 또는 정보통신망 이용촉진 및 정보보호 등에 관한 법률 제2조 제1항 제1호에 따른 정보통신망에 침입하여 거짓이나 그 밖의 부정한 방법으로 획득한 접근매체의 이용으로 발생한 사고
② 회사는 제1항에도 불구하고 다음 각호의 어느 하나에 해당하는 경우에는 책임의 전부 또는 일부를 이용자가 부담하게 할 수 있습니다.
1. 이용자가 접근매체를 제3자에게 대여하거나 그 사용을 위임한 경우 또는 양도나 담보의 목적으로 제공한 경우
2. 제3자가 권한 없이 이용자의 접근매체를 이용하여 전자금융거래를 할 수 있음을 알았거나 쉽게 알 수 있었음에도 불구하고 접근매체를 누설하거나 노출 또는 방치한 경우
3. 회사가 전자금융거래법 제6조제1항에 따른 확인 외에 보안강화를 위하여 전자금융거래 시 요구하는 추가적인 보안조치를 이용자가 정당한 사유 없이 거부하여 위 제1항 제3호에 따른 사고가 발생한 경우
4. 이용자가 제3호에 따른 추가적인 보안조치에 사용되는 매체·수단 또는 정보에 대하여 다음 각 목의 어느 하나에 해당하는 행위를 하여 위 제1항제3호에 따른 사고가 발생한 경우
가. 누설·노출 또는 방치한 행위
나. 제3자에게 대여하거나 그 사용을 위임한 행위 또는 양도나 담보의 목적으로 제공한 행위
5. 법인('중소기업기본법' 제2조 제2항에 의한 소기업을 제외합니다)인 이용자에게 손해가 발생한 경우로서 회사가 사고를 방지하기 위하여 보안절차를 수립하고 이를 철저히 준수하는 등 합리적으로 요구되는 충분한 주의의무를 다한 경우
③ 회사는 컴퓨터 등 정보통신설비의 보수점검, 교체의 사유 등이 발생한 경우 전자금융거래서비스의 제공을 일시적으로 중단할 수 있으며, 회사는 각 홈페이지를 통하여 이용자에게 전자금융거래서비스 제공의 중단일정 및 중단 사유를 사전에 공지합니다.
④ 회사는 이용자로부터의 거래지시가 있음에도 불구하고 컴퓨터 등 정보통신설비의 보수점검, 교체 및 고장, 통신의 두절 등의 사유가 발생한 경우에는 전자금융서비스의 제공을 일시적으로 중단할 수 있으며, 이로 인하여 이용자에게 손해가 발생한 경우에는 그 손해를 배상할 책임을 집니다.

제11조 (분쟁처리 및 분쟁조정)
① 이용자는 인터넷사이트 초기 화면에 게시된 분쟁처리 책임자 및 담당자 연락처를 통하여 전자금융거래와 관련한 의견 및 불만의 제기, 손해배상의 청구 등의 분쟁처리를 요구할 수 있습니다.
② 이용자는 제1항에 따라 서면(전자문서를 포함합니다) 또는 전자적 장치를 이용하여 회사의 본점이나 영업점에 분쟁처리를 신청할 수 있으며, 회사는 15일 이내에 이에 대한 조사 또는 처리 결과를 이용자에게 안내합니다.
③ 이용자는 회사의 분쟁처리결과에 대하여 이의가 있을 경우 '금융위원회의 설치 등에 관한 법률'에 따른 금융감독원의 금융분쟁조정위원회나 '소비자기본법' 에 따른 한국소비자원의 소비자분쟁조정위원회에 회사의 전자금융거래서비스의 이용과 관련한 분쟁조정을 신청할 수 있습니다.

제12조 (회사의 안전성 확보 의무)
회사는 전자금융거래가 안전하게 처리될 수 있도록 선량한 관리자로서의 주의를 다하며, 전자금융거래의 안전성과 신뢰성을 확보할 수 있도록 전자금융거래의 종류별로 전자적 전송이나 처리를 위한 인력, 시설, 전자적 장치 등의 정보기술부문 및 전자금융업무에 관하여 금융위원회가 정하는 기준을 준수합니다.

제13조 (약관외 준칙)
① 본 약관에서 정하지 아니한 사항(용어의 정의 포함)에 대하여는 전자금융거래법, 전자상거래 등에서의 소비자 보호에 관한 법률, 여신전문금융업법 등 소비자보호 관련 법령 및 개별약관에서 정한 바에 따릅니다.
② 회사와 이용자가 본 약관의 내용과 다르게 합의한 사항이 있을 때에는 관련 법령에 저촉되지 않는 범위에서 그 합의 사항이 본 약관보다 우선합니다

제14조 (관할)
회사와 이용자간에 발생한 분쟁에 관한 관할은 민사소송법에서 정한 바에 따릅니다.

제2장 전자지급결제대행서비스
제15조 (정의)
본 장에서 정하는 용어의 정의는 다음과 같습니다.
1. '전자지급결제대행 서비스'라 함은 전자적 방법으로 재화 또는 용역(이하 '재화 등'이라고만 합니다)의 구매에 있어서 지급결제정보를 송신하거나 수신하는 것 또는 그 대가의 정산을 대행하거나 매개하는 서비스를 말합니다.
2. '이용자'라 함은 본 약관에 동의하고 회사가 제공하는 전자지급결제대행 서비스를 이용하는 자를 말합니다.

제16조 (거래지시의 철회)
① 이용자가 전자지급결제대행서비스를 이용한 경우, 이용자는 거래지시된 금액의 정보에 대하여 수취인의 계좌가 개설되어 있는 금융기관 또는 회사의 계좌의 원장에 입금기록이 끝나거나 전자적 장치에 입력이 끝나기 전까지 거래지시를 철회할 수 있습니다.
② 회사는 이용자의 거래지시의 철회에 따라 지급거래가 이루어지지 않은 경우 수령한 자금을 이용자에게 반환하여야 합니다.

제17조 (접근매체의 관리)
① 회사는 전자지급결제대행서비스 제공 시 접근매체를 선정하여 이용자의 신원, 권한 및 거래지시의 내용 등을 확인 하여야 합니다.
② 이용자는 접근매체를 사용함에 있어서 다른 법률에 특별한 규정이 없는 한 다음 각 호의 행위를 하여서는 아니됩니다.
1. 접근매체를 양도하거나 양수하는 행위
2. 대가를 수수(授受)·요구 또는 약속하면서 접근매체를 대여받거나 대여하는 행위 또는 보관·전달·유통하는 행위
3. 범죄에 이용할 목적으로 또는 범죄에 이용될 것을 알면서 접근매체를 대여받거나 대여하는 행위 또는 보관·전달·유통하는 행위
4. 접근매체를 질권의 목적으로 하는 행위
5. 제1호부터 제4호 중 하나의 행위를 알선하는 행위
③ 이용자는 자신의 접근매체를 제3자에게 누설 또는 노출하거나 방치하여서는 안되며, 접근매체의 도용이나 위조 또는 변조를 방지하기 위하여 충분한 주의를 기울여야 합니다.
④ 회사는 이용자로부터 접근매체의 분실이나 도난 등의 통지를 받은 때에는 그 때부터 제3자가 그 접근매체를 사용함으로 인하여 이용자에게 발생한 손해를 배상할 책임이 있습니다.

제3장 결제대금예치서비스
제18조 (정의)
본 장에서 정하는 용어의 정의는 다음과 같습니다.
1. '결제대금예치서비스'라 함은 인터넷사이트에서 이루어지는 선지급식 통신판매에 있어서, 회사가 소비자가 지급하는 결제대금을 예치하고 배송이 완료된 후 재화 또는 용역 (이하 '재화 등'이라 합니다)의 대금을 판매자에게 지급하는 제도를 말합니다.
2. '선지급식 통신판매'라 함은 소비자가 재화 등을 공급받기 전에 미리 대금의 전부 또는 일부를 지급하는 대금 지급 방식의 통신판매를 말합니다.
3. '판매자'라 함은 본 약관에 동의하고 회사 운영의 인터넷사이트에 입점한 자로서, 통신판매를 하는 자를 말합니다.
4. '소비자'라 함은 본 약관에 동의하고 회사 운영의 인터넷사이트에 입점한 판매자로부터 재화 등을 구매하는 자로서 전자상거래 등에서의 소비자보호에 관한 법률 제2조 제5호의 요건에 해당하는 자를 말합니다.
5. '이용자'라 함은 '판매자'와 '소비자'를 말합니다.

제19조 (예치된 결제대금의 지급방법)
① 소비자(그 소비자의 동의를 얻은 경우에는 재화 등을 공급받을 자를 포함한다. 이하 제2항 내지 제3항에서 같습니다)는 재화 등을 공급받은 사실을 재화 등을 공급받은 날부터 3영업일 이내에 회사에 통보하여야 합니다.
② 회사는 소비자로부터 재화 등을 공급받은 사실을 통보 받을 경우 회사가 정한 기일 내에 판매자에게 결제대금을 지급합니다.
③ 회사는 소비자가 재화 등을 공급받은 날부터 3영업일이 지나도록 정당한 사유의 제시 없이 그 공급받은 사실을 회사에 통보하지 아니하는 경우에 소비자의 동의 없이 판매자에게 결제대금을 지급할 수 있습니다.
④ 회사가 판매자에게 결제대금을 지급하기 전에 소비자가 그 결제대금을 환급 받을 사유가 발생한 경우에는 그 결제대금을 소비자에게 환급합니다.

제20조 (거래지시의 철회)
① 이용자가 결제대금예치서비스를 이용한 경우, 이용자는 거래지시된 금액의 정보가 수취인이 지정한 전자적 장치에 도달하기 전까지 거래지시를 철회할 수 있습니다.
② 회사는 이용자의 거래지시의 철회에 따라 지급거래가 이루어지지 않은 경우 수령한 자금을 이용자에게 반환하여야 합니다.

제21조 (준용규정)
제2장 전자지급결제대행서비스 제17조는 본장 결제대금예치서비스에 준용합니다.

제4장 선불전자지급수단
제22조 (정의 및 주요내용)
① 본 장에서 정하는 용어의 정의는 다음과 같습니다.
1. '선불전자지급수단’이라 함은 그 명칭과 관계 없이 온라인 또는 오프라인에서 사용되는 회사가 발행 당시 미리 이용자에게 공지한 전자금융거래법상 선불전자지급수단을 말합니다.
2. '이용자'라 함은 본 약관에 동의하고 온라인 또는 오프라인의 가맹점으로부터 재화등을 구매하고 선불전자지급수단을 결제수단으로 하여 그 대가를 지급하는 자를 말합니다.
3. '접근매체'라 함은 선불전자지급수단을 이용한 전자금융거래에 있어서 지급지시를 하거나 이용자 및 거래내용의 진실성과 정확성을 확보하기 위하여 회사에 등록된 이용자번호 및 비밀번호 기타 회사가 지정한 수단을 말합니다.
② 선불전자지급수단은 이용자가 충전(구매)하거나 또는 재화등의 구매를 통해 적립할 수 있으며, 그 외에도 이용자가 실제로 결제된 금액보다 더 많이 입금한 금액(입금차액), 입금을 하였지만 입금확인 전 취소 또는 관련 주문 건을 찾을 수 없어 환불 받아야 하는 금액(입금환불), 주문 후 취소 및 반품으로 인하여 환불 받아야 하는 금액(주문취소환불) 등의 방법을 통해서도 적립할 수 있습니다. 선불전자지급수단의 적립최고한도는 기명식 200만원, 무기명식 50만원으로 합니다. 또한 회사가 정한 방법에 따라 제3자에게 이전할 수도 있습니다. 회사가 발행한 각종 선불전자지급수단의 상세 내용은 해당 인터넷사이트 서비스 화면을 통하여 확인할 수 있습니다.

제23조 (접근매체의 관리)
① 회사는 이용자로부터 선불전자지급수단이나 접근매체의 분실 또는 도난 등의 통지를 받기 전에 이용자의 의사와는 달리 선불전자지급수단에 저장된 금액이 사용 또는 처분되어 발생한 손해에 대하여는 책임지지 않습니다.
② 제2장 전자지급결제대행서비스 제17조의 내용은 본장 선불전자지급수단에 준용합니다.

제24조 (환급)
① 이용자는 보유 중인 선불전자지급수단의 환급을 회사에 요구할 경우(천재지변 등의 사유로 회사 또는 가맹점이 재화 또는 용역을 제공하기 곤란하여 선불전자지급수단을 사용하지 못하게 된 경우, 선불전자지급수단의 결함으로 회사 또는 가맹점이 재화 또는 용역을 제공하지 못하는 경우 등 포함) 선불전자지급수단 전액을 환급 받으실 수 있습니다. 다만, 환급의 대상이 되는 선불전자지급수단은 이용자가 회사로부터 충전(구매)하여 보유하고 있는 것에 한정되며, 이용자가 이벤트 등을 통하여 회사로부터 무상 제공받은 것은 포함되지 않습니다.
② 전항에도 불구하고, 이용자가 ‘G마켓 선물권’ 구매를 통해 보유하게 된 선불전자지급수단은 ‘G마켓 선물권’ 발행일로부터 5년동안 유효하고, 유효기간 경과 전까지 권면 금액의 100분의 60 이상을 물품 구매 등에 사용하고 환급을 요청하는 경우 잔액을 환급받으실 수 있습니다. 다만, ‘G마켓 선물권’ 구매시 사용한 결제 수단에 따라 일정한 기간이 경과된 이후에 잔액이 환급될 수 있습니다. 이에 관한 상세한 내용은 ‘G마켓 선물권 이용약관’ 또는 인터넷사이트에 고지합니다.
③ 제1항 본문(단, 괄호부분은 제외)에도 불구하고, 회사가 외부와 제휴하여 정한 포인트 등(이하 “제휴포인트”)을 전환하여 보유하게 된 선불전자지급수단은 그 환급 또는 전환취소를 제한할 수 있으며, 다만 잔액이 권면 금액의 100분의 [20]이하인 경우에 한하여 환급을 요청할 수 있고, 이 경우 전환조건을 미리 인터넷사이트에 고지합니다.
④ 이용자는 회사가 정한 기한 및 이용방법에 따라 선불전자지급수단을 이용할 수 있으며, 회사는 구체적인 사항을 인터넷사이트를 통해 공지합니다.

제25조 (유효기간)
① 회사는 이용자에 대하여 이벤트 등을 통하여 무상으로 제공되는 선불전자지급수단에 대하여 유효 기간을 설정할 수 있으며, 이용자는 회사가 정한 유효기간 내에서만 동 무상 선불전자지급수단 을 사용할 수 있습니다.
② 회사는 해당 이벤트 웹 페이지 등을 통하여 유효기간 설정 여부 및 그 기간을 사전 고지합니다.

제26조 (거래지시의 철회)
① 이용자가 선불전자지급수단을 이용한 경우, 이용자는 거래지시된 금액의 정보가 수취인이 지정한 전자적 장치에 도달하기 전까지 거래지시를 철회할 수 있습니다.
② 회사는 이용자의 거래지시의 철회에 따라 지급거래가 이루어지지 않은 경우 수령한 자금을 이용자에게 반환하여야 합니다.

제27조 (환수 및 선불전자지급수단의 마이너스 처리)
① 재화등의 구매를 통해 적립된 이용자의 선불전자지급수단은 해당 구매가 취소될 경우 회사에 의해 환수될 수 있습니다.
② 이용자의 구매 취소 등의 사유 발생으로 회사가 이용자에게 기 부여한 선불전자지급수단을 환수하고자 하는 경우 환수 시점에 당해 이용자의 선불전자지급수단 잔액이 환수대상액보다 작을 경우에는 회사는 당해 이용자에 대한 선불전자지급수단을 0보다 작은 마이너스로 처리할 수 있습니다. 이 경우, 이용자는 선불전자지급수단의 충전(구매) 또는 회사가 인정하는 기타의 방법 등을 통하여 자신의 마이너스 선불전자지급수단을 환원할 수 있습니다.</pre>
										</div>
									</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-secondary"
										data-dismiss="modal">확인</button>
								</div>
							</div>
						</div>
					</div>


				</div>
			</div>
		</div>
	</div>



	<div>
		<%@ include file="../common/footer.jsp"%>
	</div>

	<script>
		var doc = document; 
		var form1 = doc.getElementById('form1'); 
		var inputs = form1.getElementsByTagName('INPUT'); 
		var form1_data = {
			"agree1": false, 
			"agree2": false, 
			"agree3": false
		}; 
	
		var agree1 = doc.getElementById('agree1'); 
		var agree2 = doc.getElementById('agree2'); 
		var agree3 = doc.getElementById('agree3'); 
		
		function checkboxListener() {
			form1_data[this.name] = this.checked; 

			if(this.checked) {
				// submit 할때 체크하지 않아 색이 변한 font 를 다시 원래 색으로 바꾸는 부분. 
				this.parentNode.style.color = "#000"; 
			}
		}
		
		agree1.onclick = agree2.onclick = agree3.onclick = checkboxListener; 

		var all = doc.getElementById('check-all'); 

		all.onclick = function() {
			if (this.checked) {
				setCheckbox(form1_data, true); 
			} else {
				setCheckbox(form1_data, false); 
			}
		}; 
		
		function setCheckbox(obj, state) {
			for (var x in obj) {
				obj[x] = state; 

				for(var i = 0; i < inputs.length; i++) {
					if(inputs[i].type == "checkbox") {
						inputs[i].checked = state; 
					}
				}

			}
		}
		
		form1.onsubmit = function(e) {
			e.preventDefault(); // 서브밋 될때 화면이 깜빡이지 않게 방지

			if ( !form1_data['agree1'] ) {
				alert('14세 이상을 선택을 하지 않았습니다'); 
				agree1.parentNode.style.color = 'red'; 
				return false; 
			}

			if ( !form1_data['agree2'] ) {
				alert('이용약관에 동의하여 주시길 바랍니다.'); 
				agree2.parentNode.style.color = 'red';
				return false; 
			}
			
			if ( !form1_data['agree3'] ) {
				alert('개인정보수집에 동의하여 주시길 바랍니다.'); 
				return false; 
			}

			this.submit(); 
		}; 
		
	</script>




</body>
</html>