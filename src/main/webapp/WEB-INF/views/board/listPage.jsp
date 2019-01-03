<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page session="false" %>
<%@ include file="../include/header.jsp" %>

<div class="contents overflow-h padding-b40">

	<h3>Board</h3>

	<div class="m20 overflow-a">
		<a href="/board/register">
			<button class="btn btn-primary fr">새글등록</button>
		</a>
	</div>

	<div class="container-fluid">
		<table class="table table-bordered table-hover">
		  <thead>
			<tr>
				<th scope="col" style="width: 5%">BNO</th>
				<th scope="col" style="width: 50%">TITLE</th>
				<th scope="col" style="width: 30%">WRITER</th>
				<th scope="col" style="width: 10%">REGDATE</th>
				<th scope="col" style="width: 5%">VIEWCNT</th>
			</tr>
		  </thead>
		  <tbody>
		  <c:forEach items="${list}" var="boardVO">
			<tr class="boardRow" data-board-id="${boardVO.boardId}">
				<th scope="row" class="bno">${boardVO.bno}</th>
				<td>${boardVO.title}</td>
				<td>${boardVO.regiUserId}</td>
				<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${boardVO.regiDate}"/></td>
				<td class="text-center"><span class="badge badge-pill badge-dark">${boardVO.viewCnt}</span></td>
			</tr>
		  </c:forEach>
		  </tbody>
		</table>
	</div>

	<%-- <form role="form" id="pageRedirect" method="post" action="/board/read?bno=${boardVO.bno}">
		<input id="inpt_boardId" type="hidden" name="boardId" />
	</form> --%>

</div>

<script>
$(document).ready(function(){

	/* 테이블의 해당 행을 클릭하면 해당 게시물의 조회(read)페이지로 이동 */
	$(".boardRow").on('click', function(){
		/* console.info($(this).index()); */
		/* console.info($(this).children(".bno").text()); */
		/* console.info("$(this).data() => ",$(this).data()); */
		/* console.info("$(this).data('boardId') => ",$(this).data("boardId")); */
		var bno = $(this).children(".bno").text(),
		    uri = "/board/read?bno=" + bno;

		location.href = uri;
	});

});
</script>
<%@ include file="../include/footer.jsp" %>