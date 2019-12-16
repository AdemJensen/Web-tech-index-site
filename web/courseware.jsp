<%@ page import="java.io.IOException" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <link type="text/css" rel="stylesheet" href="resources/css/master.css"/>
    <title>教学课件-Web技术</title>
    <%!
        void outputTableRow(JspWriter out, int num, String name, String fileName, String storeName, boolean open) throws IOException {
            if (open) out.print("<tr><td>" + num + "</td><td class=\"left\">" + name +
                    "</td><td><a href=\"resources/ppt/" + storeName +
                    "\" class=\"link\" download=\"" + fileName + "\">下载</a></td></tr>");
            else out.print("<tr><td>" + num + "</td><td class=\"left\">" + name +
                    "</td><td>本文件暂不支持下载</tr>");
        }
    %>
</head>
<body>
<div class="nav-bar">
    <a href="introduction.jsp" class="nav-bar-a"><div class="nav-bar-btn"><p class="nav-bar-p">课程介绍</p></div></a>
    <a href="outline.jsp" class="nav-bar-a"><div class="nav-bar-btn"><p class="nav-bar-p">教学大纲</p></div></a>
    <a href="courseware.jsp" class="nav-bar-a"><div class="nav-bar-btn"><p class="nav-bar-p">教学课件</p></div></a>
    <a href="video.jsp" class="nav-bar-a"><div class="nav-bar-btn"><p class="nav-bar-p">视频资料</p></div></a>
    <a href="comment.jsp" class="nav-bar-a"><div class="nav-bar-btn"><p class="nav-bar-p">留言板</p></div></a>
</div>
<a href="index.jsp"><img class="nav-bar-main-btn" src="resources/img/nav-bar/logo.png" alt="晨晖logo"  /></a>

<div class="master-container">
    <h1>《web技术》课件</h1>

    <p>单击对应的按钮即可下载课件。</p>

    <table>
        <thead>
        <tr>
            <th>序号</th>
            <th>名称</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody class="center">
        <%
            String[] nameList = {"网站的设计与建设1", "网站的设计与建设2", "网站的设计与建设3", "网站的设计与建设4",
                    "网站的设计与建设5", "网站的设计与建设6", "网站的设计与建设7", "网站的设计与建设8 - new",
                    "网站的设计与建设9", "网站的设计与建设10", "网站的设计与建设11", "网站的设计与建设12",
                    "网站的设计与建设13", "第14章 XML", "第15章 AJAX", "网站的设计与建设16",
                    "网站的设计与建设17 网站发布", "网站的设计与建设18", "网站的设计与建设19", "网站设计与建设-第20章 MySQL数据库",
                    "网站的设计与建设21", "网站的设计与建设22 odbc", "第23章（补充） JSON"};
            for (int i = 0; i < 23; i++)
                outputTableRow(out, i + 1, nameList[i] + ".ppt", nameList[i] + ".ppt", (i + 1) + ".ppt", i != 15);
        %>
        </tbody>
    </table>
    <p>*说明：在实际实施教学过程时，教师应根据培养方案、课程实际学时、计算机技术的发展和学生的实际情况选择和适当调整课程内容和学时分配。</p>
</div>

<div class="bottom-bar bottom-bar-extend">
    <%@ include file="base/footer.jsp"%>
</div>

</body>
</html>
