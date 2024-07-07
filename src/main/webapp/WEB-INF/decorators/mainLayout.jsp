<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../common/include.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>RecSee4.0 Admin</title>
</head>
<%-- Body Start --%>
<body>
    <div class="appWrap">
        <nav>
            <%@ include file="/WEB-INF/common/sideMenu.jsp" %>
        </nav>
        <app class="appContainer">
            <header>
                <%@ include file="/WEB-INF/common/header.jsp" %>
            </header>
            <main class="appMain">
                <sitemesh:write property='body' />
            </main>
        </app>
    </div>
</body>

<%-- Body End --%>
</html>