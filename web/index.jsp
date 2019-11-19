<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <link type="text/css" rel="stylesheet" href="resources/css/master.css"/>
  <link type="text/css" rel="stylesheet" href="resources/css/master-view.css"/>
  <title>首页-Web技术</title>
</head>
<body>
<%@ include file="base/nav-bar.jsp"%>

<h1 class="main-header mh-1">在《Web 技术》的学习中</h1>
<h1 class="main-header mh-2">找到更精彩的自己</h1>

<a href="introduction.jsp"><div class="bubble-container bubble-c1">
  <img class="bubble-img" src="resources/img/bubble.png" alt="BUBBLE"/>
  <img class="bubble-icon" src="resources/img/nav-bar/icons8-info.png" alt="课程介绍"/>
</div></a>
<a href="outline.jsp"><div class="bubble-container bubble-c2">
  <img class="bubble-img" src="resources/img/bubble.png" alt="BUBBLE"/>
  <img class="bubble-icon" src="resources/img/nav-bar/icons8-test_passed.png" alt="教学大纲"/>
</div></a>
<a href="courseware.jsp"><div class="bubble-container bubble-c3">
  <img class="bubble-img" src="resources/img/bubble.png" alt="BUBBLE"/>
  <img class="bubble-icon" src="resources/img/nav-bar/icons8-documents.png" alt="教学课件"/>
</div></a>
<a href="video.jsp"><div class="bubble-container bubble-c4">
  <img class="bubble-img" src="resources/img/bubble.png" alt="BUBBLE"/>
  <img class="bubble-icon" src="resources/img/nav-bar/icons8-play_round.png" alt="视频资料"/>
</div></a>
<a href="comment.jsp"><div class="bubble-container bubble-c5">
  <img class="bubble-img" src="resources/img/bubble.png" alt="BUBBLE"/>
  <img class="bubble-icon" src="resources/img/nav-bar/icons8-chat.png" alt="留言板"/>
</div></a>

<div class="bottom-bar bottom-bar-attached">
  <%@ include file="base/footer.jsp"%>
</div>
</body>
</html>
