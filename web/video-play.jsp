<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.io.*,java.util.*" %>
<html>
<head>
    <link type="text/css" rel="stylesheet" href="resources/css/master.css"/>
    <title>教学课件-Web技术</title>
</head>
<body>
<%@ include file="base/nav-bar.jsp"%>

<div class="master-container">
    <h1>视频：《<%= request.getParameter("name") %>》</h1>
    <video width="100%" controls>
        <source src="resources/video/<%= request.getParameter("file") %>.mp4" type="video/mp4">
        您的浏览器不支持 HTML 5 标准，请更换浏览器再试
    </video>
</div>
<div class="bottom-bar bottom-bar-extend">
    <%@ include file="base/footer.jsp"%>
</div>

</body>
</html>
