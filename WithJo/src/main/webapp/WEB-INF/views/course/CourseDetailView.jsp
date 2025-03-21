<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.*" %>    

<!DOCTYPE html>
<html>
<head>
<script
  src="https://code.jquery.com/jquery-3.7.1.js"
  integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4="
  crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>강의디테일리스트</title>
<!-- css 초기화 -->
<link href="https://cdn.jsdelivr.net/npm/reset-css@5.0.2/reset.min.css" rel="stylesheet">
 <!-- 페이지 css -->
<link rel="stylesheet" href="/css/common/common.css">
<link rel="stylesheet" href="/css/course/courseDetail.css">
<link href="https://api.fontshare.com/v2/css?f[]=general-sans@400&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="/plugin/sumoselect/sumoselect.min.css"/>
<!--  페이지 js -->
<script defer src="/js/common/common.js"></script>
<script defer src="/js/course/courseDetail.js"></script>
<script defer src="/js/course/courseInsert.js"></script>
<script defer src="/plugin/sumoselect/jquery.sumoselect.min.js"></script>
</head>
<body>
	<jsp:include page="/WEB-INF/views/Header.jsp"/>
		<div id="mainContainer">
			<div class="courseDetailBox">
				<div class="courseDetailInnerBox">
					<div class="courseInner">
						<div class="rightBox">
							<div class="rightBoxFloat">
								<div class="rightBoxInfo">
										<div class="rightBoxInfoInner">
											<div class="scrollArea">
												<div class="course-Ing">
													<c:set var="now" value="<%=new java.util.Date() %>"/>
														<!--<fmt:formatDate value="${courseVo.courseRecStart}" pattern="yyyy-MM-dd hh:mm:ss" var="startrRecDate"/>-->
														<c:if test="${now > courseVo.courseRecStart and now < courseVo.courseRecEnd}">
															<div class="courseRecStart">
																<span class="courseRecStartLabel">접수중</span>
															</div>
														</c:if>
														<c:if test="${now < courseVo.courseRecStart}">
															<div class="courseRecStartWait">
																<span class="courseRecStartWaitLabel">접수대기중</span>
															</div>
														</c:if>
														<c:if test="${now > courseVo.courseRecEnd and now > courseVo.courseRecStart}">
															<div class="courseRecEnd">
																<span class="courseRecEndWaitLabel">마감</span>
															</div>
														</c:if>
												</div>
												<div class="courseInfoTitle">
													<div class="courseInfoTitleImg">
														<p>
															<span class="courseImBox">
																<img class="courseImg" alt="." src="/imges/${courseVo.courseMainImage}">
															</span>
														</p>
													</div>
													<div class="courseInfoTitleSub">
														<p>
															[<fmt:formatDate value="${courseVo.courseStartDate}" pattern="MM/dd" />]
															${courseVo.courseName}
														</p>
													</div>
												</div>
												<div class="courseInfoSub">
													<div class="courseInfoSubElement teacher">
														<div class="courseInfoSubElement--flex title">
															<span>강사명</span>
														</div>
														<div class="courseInfoSubElement--flex detail">
															<span>${courseVo.courseTeacher}</span>
														</div>
													</div>
													<div class="courseInfoSubElement aboutCourseDate">
														<div class="courseInfoSubElement--flex title">
															<span>강의기간</span>
														</div>
														<div class="courseInfoSubElement--flex detail">
															<span><fmt:formatDate value="${courseVo.courseStartDate}" pattern="yyyy.MM.dd" /></span>
															<span>~</span>
															<span><fmt:formatDate value="${courseVo.courseEndDate}" pattern="yyyy.MM.dd" /></span>
														</div>
													</div>
													<div class="courseInfoSubElement aboutCourseDay">
														<div class="courseInfoSubElement--flex title">
															<span>강의시간</span>
														</div>
														<div class="courseInfoSubElement--flex detail">
															[<c:forEach var="item" items="${courseDay.courseDay}">
																<span class="courseDayOfTheWeek">
																	<c:choose>
															            <c:when test="${item.courseDayOfTheWeek == '1'}">월</c:when>
															            <c:when test="${item.courseDayOfTheWeek == '2'}">화</c:when>
															            <c:when test="${item.courseDayOfTheWeek == '3'}">수</c:when>
															            <c:when test="${item.courseDayOfTheWeek == '4'}">목</c:when>
															            <c:when test="${item.courseDayOfTheWeek == '5'}">금</c:when>
															            <c:when test="${item.courseDayOfTheWeek == '6'}">토</c:when>
															            <c:when test="${item.courseDayOfTheWeek == '7'}">일</c:when>
															            <c:otherwise>${item.courseDayOfTheWeek}</c:otherwise>
															        </c:choose>
																</span>
															</c:forEach>
															]
															<span class="courseStartTime">${courseVo.courseStartTime}</span>
															<span>~</span>
															<span class="courseEndTime">${courseVo.courseEndTime}</span>
														</div>
													</div>
													<div class="courseInfoSubElement cost">
														<div class="courseInfoSubElement--flex title">
															<span>수강비용</span>
														</div>
														<div class="courseInfoSubElement--flex detail">
															<p class="courseCostTxt">${courseVo.courseCost}</p>
														</div>
													</div>
													<div class="courseInfoSubElement current">
														<div class="courseInfoSubElement--flex title">
															<span>수강정원</span>
														</div>
														<div class="courseInfoSubElement--flex detail">
															<span>${courseVo.courseCurrentPeople}</span>
															<span>/</span>
															<span>${courseVo.courseMaxPeople}</span>
														</div>
													</div>
													<div class="courseInfoSubElement age">
														<div class="courseInfoSubElement--flex title">
															<span>나이제한</span>
														</div>
														<div class="courseInfoSubElement--flex detail">
															<span>${courseVo.courseAgeLimit}</span>
														</div>
													</div>
													<div class="courseInfoSubElement endCourse">
														<div class="courseInfoSubElement--flex title">
															<span>접수기간</span>
														</div>
														<div class="courseInfoSubElement--flex detail">
															<span><fmt:formatDate value="${courseVo.courseRecStart}" pattern="yyyy.MM.dd" /></span>
															<span>~</span>
															<span><fmt:formatDate value="${courseVo.courseRecEnd}" pattern="yyyy.MM.dd" /></span>
														</div>
													</div>
												</div>
											</div>
										</div><!-- rightBoxInfoInner -->
										<div class="courseReservation">
											<c:set var="now" value="<%=new java.util.Date() %>"/>
												<!--<fmt:formatDate value="${courseVo.courseRecStart}" pattern="yyyy-MM-dd hh:mm:ss" var="startrRecDate"/>-->
											<c:if test="${now > courseVo.courseRecStart and now < courseVo.courseRecEnd}">
											<input type="hidden" class="courseCurrentPeopleHidden" value="${courseVo.courseCurrentPeople}">
											<input type="hidden" class="courseMaxPeopleHidden" value="${courseVo.courseMaxPeople}">
												<div class="courseResBtnFnc">
													<a class="courseResBtn"  href="javascript:courseRes(${courseVo.courseNo},${sessionScope.memberVo.memberNo});"><span>수강신청하기</span></a>
												</div>
											</c:if>
											<c:if test="${now < courseVo.courseRecStart}">
												<div>
													<a class="courseResBtn"><span>수강신청대기중</span></a>
												</div>
											</c:if>
											<c:if test="${now > courseVo.courseRecEnd and now > courseVo.courseRecStart}">
												<div>
													<a class="courseResBtn"><span>수강신청마감</span></a>
												</div>
											</c:if>
										</div>
										</div><!-- rightBoxInfoInner -->
								</div> <!-- rightBoxInfo -->
							</div>
							<div class="infoBox">
								<p>
									<span class="courseImBox">
										<img class="courseImg" alt="." src="/imges/${courseVo.courseMainImage}">
									</span>
								</p>
								<div class="courseInfoText">
									<P style="font-family: '맑은 고딕';font-size: 20pt;font-weight: 700;">
										<span style="background-color:rgb(128 145 188 / 29%);">${courseVo.courseName}</span>
									</p>
									<div class="courseTeacherInfo">
										<p class="">
											<span>강사 ${courseVo.courseTeacher}
											</span>
										</p>
									</div>
									<div class="courseInfo--boxP">
										<div class="courseInfo--box">
											<pre><c:out value="${courseVo.courseInfo}" /></pre>
											<div class="info_dot_txt">
												<p class="dot_txt_p">유의사항</p>
												<p class="dot_txt">강의 취소 및 환불은 수업 참여여부와 상관없이 [평생교육법 시행령]에 의거해 처리됩니다.</p>
												<p class="dot_txt">일반 강의는 개강 1일 전까지 취소 및 환불 가능하며, 당일 취소는 적용되지 않습니다.</p>
												<p class="dot_txt">수강신청 인원이 미달될 경우 강좌가 폐강될 수 있으며, 수강료는 전액 환불됩니다.</p>
												<p class="dot_txt">회원정보에서 실제수강자명과 핸드폰 번호를 반드시 확인해주세요.</p>
												<p class="dot_txt">영유아 강좌는 아이와 보호자 1인만 참여 가능합니다.</p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<input type="hidden" value="${sessionScope.memberVo.authority}" class="memberVo">
				<input type="hidden" value="${sessionScope.memberVo.memberNo}" class="memberNo">
				<input type="hidden" value="${sessionScope.memberVo.memberEMoney}" class="memberEmoneyHidden">
				<c:if test="${sessionScope.memberVo.authority eq 1}">
					<div class="admin">
						<div>
							<button onclick="courseUpdateFnc(${courseVo.courseNo});">강의수정</button>
						</div>
						<div>
							<button onclick="courseListReturn();">돌아가기</button>
						</div>
					</div>
				</c:if>
			</div>
	<jsp:include page="/WEB-INF/views/Footer.jsp"/>
</body>
</html>