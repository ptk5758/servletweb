<%@page import="util.MenuManager"%>
<%@page import="model.Menu"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/include/header_sub.jsp" %>
<%
	String[] dataBase = {"자유게시판","공지사항","Q&A","로그인","마이페이지"};
	MenuManager menumanager = new MenuManager();
	
	for(int i=0; i<dataBase.length; i++) {
		Menu menu = new Menu();
		menu.setName(dataBase[i]);
		menu.setHref("#");
		menumanager.putMenu(menu);
	}
%>
<body>

<header>
	<div>
		<span>로고</span>
	</div>
	<div>
		<%=menumanager.printMenuList() %>
	</div>
</header>
