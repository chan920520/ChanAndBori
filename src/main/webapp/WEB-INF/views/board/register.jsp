<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ include file="../include/header.jsp" %>

<h3>New Board</h3>

<div>
	<form class="overflow-a" method="post">
	
		<div class="form-group">
			<label for="title">Title</label>
			<input class="form-control" type="text" name="title" id="title" placeholder="Enter Title..."/>
		</div>
		
		<div class="form-group">
			<label for="content">Content</label>
			<textarea class="form-control" name="content" rows="10" cols="40" id="content" placeholder="Enter Content..."></textarea>
		</div>
		
		<div class="form-group">
			<label for="writer">Writer</label>	
			<input class="form-control" type="text" name="writer" id="writer" placeholder="Enter Writer..."/>
		</div>
		
		<div class="text-center">
			<button class="btn btn-primary" style="margin:5px" type="submit">등록</button>
			<!-- To-Do취소버튼 누르면 게시물 등록되지 않고 단순히 리스트 페이지로만 되돌아가도록. -->
			<a style="margin:5px" href="/board/listPage"><button class="btn btn-danger">취소</button></a>
		</div>
		
	</form>
</div>
  
<%@ include file="../include/footer.jsp" %>  