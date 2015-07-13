<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="context" value="<%=request.getContextPath() %>"></c:set>
<style>	@IMPORT url(${context}/css/common.css); </style>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>

<header id="top">
	<div id="login">
		<a href="#joinForm" id="aJoin" class="popupOpen">회원가입</a>
		<a href="#loginForm" id="alogin" class="popupOpen">로그인</a>
		<a href="${context}/home/siteMap">사이트맵</a>
	</div>
	<div class="clear"></div>
	<nav id="topMenu">
		<table id="noneT" align="center" style="width: 80%; height: 50px;">
			<tr>
				<td class="centT"><a href="${context}/home/main.do">HOME</a></td>
				<td class="centT"><a href="${context}/member/admin.do">회원검색</a></td>
				<td class="centT"><a href="${context}/bang/main.do">방명록</a></td>
				<td class="centT"><a href="${context}/dap/main.do">답글게시판</a></td>
			</tr>
		</table>
	</nav>
</header>

<div id="joinForm" class="white-popup-block mfp-hide"
	style = 'width:600px; height : 500px; background-color: white; margin : 0 auto;'>
	<jsp:include page="../member/joinForm.jsp"></jsp:include>
</div>

<div id="loginForm" class="white-popup-block mfp-hide"
	style = 'width: 600px; height: 500px; background-color: white; margin: 0 auto;'>
	<jsp:include page="../member/loginForm.jsp"></jsp:include>
</div>

<div class="clear"></div>
<script src="${context}/js/member.js"></script>

<script src="${context}/js/magnific-popup.js"></script>
<script type="text/javascript">
	$(function(){
		$('.popupOpen').magnificPopup({
			type : 'inline',
			preloader : false,
			focus : '#username',
			modal : true,
			closeContentPos : true,
			fixedContentPos : true,
			alignTop : false,
			showCloseBtn: true
		});
		$(document).on('click', '.popupClose', function(e){
			e.preventDefault();
			$.magnificPopup.close();
	});
});
</script>