/*var floatPosition = parseInt($(".rightBoxInfo").css('top'));

// scroll 인식
$(window).scroll(function() {
  
    // 현재 스크롤 위치
    var currentTop = $(window).scrollTop();
    var bannerTop = currentTop + floatPosition + "px";

    //이동 애니메이션
    $(".rightBoxInfo").stop().animate({
      "top" : bannerTop
    }, 300);

});*/


   
   var $rightBoxInfo = $(".rightBoxInfo");
     var $inner = $(".courseInner");
     var initialPosition = parseInt($rightBoxInfo.css('top'));
     var innerHeight, rightBoxInfoHeight, maxScroll;

     function updateDimensions() {
         innerHeight = $inner.height();
         rightBoxInfoHeight = $rightBoxInfo.outerHeight();
         maxScroll = innerHeight - rightBoxInfoHeight;
     }
	 
	 function costCommaFnc(cost){
		let courseCost = cost.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
		return courseCost;
	 }
	 
	 let courseCostTxt = $('.courseCostTxt').text();
	 
	 let courseCostTxtChange = costCommaFnc(courseCostTxt);
	 $('.courseCostTxt').text(`${courseCostTxtChange}원`);
	 
     updateDimensions();
     $(window).on('resize', updateDimensions);

     $(window).scroll(function() {
         var currentTop = $(window).scrollTop();
         var innerOffset = $inner.offset().top;
         var relativeScroll = currentTop - innerOffset + initialPosition;

         var newTop = Math.max(0, Math.min(relativeScroll, maxScroll));

         $rightBoxInfo.css({
             "top": newTop + "px"
         });
     });
	 
	 let courseStartTime = $('.courseStartTime').text();
	 	let subStr1 = courseStartTime.substr(0,5);
	 	let courseEndTime = $('.courseEndTime').text();
	 	let subStr2 = courseEndTime.substr(0,5);
	 	
	 	$('.courseStartTime').text(subStr1);
	 	$('.courseEndTime').text(subStr2);
		
		
	let previousHTML = '';
		
	function courseRes(courseNo,memberEmoney){
		previousHTML = $('.rightBoxInfo').html();
		/*alert(courseNo);*/
		console.log("memberEmoney" + memberEmoney);
		$.ajax({
				url: '/course/detail/' + courseNo,
				method: 'GET',
				contentType: 'application/json',
				dataType: 'json',
				success: function (data) {
					console.log(data);
					let courseVo = data;
					let htmlStr = '';
					
					htmlStr = `<div class="rightBoxInfoInner" style="height: 400px;">
								<div class="scrollArea">
									<div class="popHead">
										<div class="popTopArea">
											<a class="back_course" title="뒤로가기" href="javascript:returnCourse()"><img src="/img/course/back.png" style="width: 32px;
																					height: 32px;"/></a>
										</div>
									</div>
									<div class="costArea">
										<div class="costContentArea">
											<div class="costOption">
												<p class="courseText">수강료</p>
											</div>
											<div class="selectedBox">
												<div>
													<fmt:formatDate value="${courseVo.courseStartDate}" pattern="MM/dd" />
													${courseVo.courseName}
												</div>
												<div class="courseCostComma">${courseVo.courseCost}</div>
											</div>
											<div class="memberEmoneyBox">
												<div class="memberEmoney">
													<p class="courseText">보유한 E-MONEY</p>
												</div>
												<div>
													<p class="memberCostComma">${memberEmoney}</p>
												</div>
											</div>
										</div>
									</div>
								</div><!-- scrollArea -->
							</div><!-- rightBoxInfoInner -->
							<div class="courseReservation" style="padding: 22px 31px 40px;">
								<div class="courseResCostBox">
									<div class="courseResCost">
										<p>총 금액</p>
									</div>
									<div class="courseResTotalCost">
										<p class="courseCostComma">${courseVo.courseCost}원</p>
									</div>
								</div>
								<div class="courseResBtnBox">
									<div>
										<a><img alt="." src="/img/common/shoppingCart.png" style="width:30px; height:30px;"/></a>
									</div>
									<div>
										<a class="courseResBtn" style="margin-left: 10px; width: 267px;" 
											href="javascript:courseReserve(${courseVo.courseNo},${courseVo.categoryNo},${courseVo.courseCost})"><span>수강신청하기</span></a>
									</div>
								</div>
							</div>`
					$('.rightBoxInfo').html(htmlStr);
					
					/*let courseCostComma = $('.courseCostComma').text();
					courseCost = courseCostComma.replace(/\B(?=(\d{3})+(?!\d))/g, ",");*/
					
					$('.courseCostComma').text(costCommaFnc(`${courseVo.courseCost}원`));
					
					let memberCostComma = $('.memberCostComma').text();
					 let memberCostCommaChange = costCommaFnc(memberCostComma);
						 $('.memberCostComma').text(`${memberCostCommaChange}원`);
				}
				
		});
		
	};
	
	function returnCourse(){
		$('.rightBoxInfo').html(previousHTML);
	}
	
	const memberVo = $('.memberVo').val();
	
	function courseReserve(courseNo,categoryNo,courseCost){
		if(memberVo.length == 0){
			alert('회원가입이 필요합니다.');
			location.href = "/member/login";
		}else if(memberVo == 0){
			let memberNo = $('.memberNo').val();
		
		let memberEmoney = $('.memberEmoneyHidden').val();
		
		if(parseInt(memberEmoney) < courseCost){
			alert('보유한 emoney가 부족합니다.');
			return false;
		}

			let jsonData = {
				courseNo : courseNo,
				memberNo: parseInt(memberNo),
				categoryNo: categoryNo
			};						
			$.ajax({
					url: '/reservation/insert',
					method: 'POST',
					data: JSON.stringify(jsonData),
					contentType: 'application/json',
					success: function (data) {
						alert(data);
						location.href = "/course/detail?courseNo=" + courseNo;
					}
			});
		}
	}
	
	/*console.log($('.courseCostComma').text());
	
	function AddComma() {
		let courseCostComma = $('.courseCostComma').text();
		console.log(courseCostComma);
	 	courseCost = courseCost.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	 	
	 	return courseCost;
	}*/
	function moveCourseList(){
		location.href="/course/list";
	}
	