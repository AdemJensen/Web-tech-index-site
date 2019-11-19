<%@ page import="java.io.IOException" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <link type="text/css" rel="stylesheet" href="resources/css/master.css"/>
    <title>教学课件-Web技术</title>
    <%!
        void outputTableRow(JspWriter out, int num, String name, String fileName) throws IOException {
            out.print("<tr><td>" + num + "</td><td class=\"left\">" + name +
                    "</td><td><a href=\"video-play.jsp?name=" + name +
                    "&&file=" + fileName + "\" class=\"link\" target=\"_blank\">观看</a> | <a href=\"resources/video/" + fileName +
                    ".mp4\" class=\"link\">下载</a></td></tr>");
        }
    %>
</head>
<body>
<%@ include file="base/nav-bar.jsp"%>

<div class="master-container">
    <h1>《web技术》视频资料</h1>

    <p>单击对应的按钮即可下载或查看视频。</p>

    <h2>第一章 HTML基本标签</h2>
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
                String[] nameList1 = {"本章课程前言", "HTML 文档的基本结构", "META 标签", "基本块级标签", "常用于局部的块级标签",
                        "行级标签", "a标签的用法", "锚点", "链接路径（相对与绝对）", "注释", "特殊符号", "本章总结"};
                for (int i = 1; i <= 12; i++) outputTableRow(out, i, nameList1[i - 1], "1." + i);

            %>
        </tbody>
    </table>

    <h2>第二章 W3C标准及XHTML 1.0基本规范</h2>
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
            String[] nameList2 = {"课程回顾", "为什么要W3C标准", "W3C提倡的Web结构", "XHTML 1.0基本规范", "本章总结"};
            for (int i = 1; i <= 5; i++) outputTableRow(out, i, nameList2[i - 1], "2." + i);

        %>
        </tbody>
    </table>

    <p>本列表中的视频仅用于《Web 技术》课程技术展示，严禁用于其他商业用途。视频作者保留一切权利，请悉知。</p>
</div>

<div class="bottom-bar bottom-bar-extend">
    <%@ include file="base/footer.jsp"%>
</div>

</body>
</html>
