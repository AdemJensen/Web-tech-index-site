<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <link type="text/css" rel="stylesheet" href="resources/css/master.css"/>
    <link type="text/css" rel="stylesheet" href="resources/css/comment.css"/>
    <title>留言板-Web技术</title>
    <script>
        var MASTER_ID = 6;
        var targetID = 0;
        var Name = "";
        function getCommentHTML(name, time, id, content, extra) {
            return "<div id=\"" + id + "\" class=\"comment-panel\">\n" +
                "        <label class=\"comment-owner\">" + name + "</label>\n" +
                "        <label class=\"comment-info\">发布于" + time.toJSON().substr(0, 19).replace('T', ' ') + "</label>\n" +
                "        <a href=\"javascript:void(0);\" onclick=\"setTarget(" + id + ", '" + name + "')\">" +
                "<label class=\"comment-reply\">回复</label></a>\n" +
                "        <div class=\"comment-content\">" + content + "</div>\n" + extra +
                "    </div>"
        }
        function sendComment() {
            var nick = document.getElementById("nick").value;
            var content = document.getElementById("content").value;
            if (nick === "") {
                document.getElementById("hint").innerHTML = "昵称不能为空";
                return;
            }
            if (content === "") {
                document.getElementById("hint").innerHTML = "内容不能为空";
                return;
            }
            var extra = "";
            if (targetID !== 0) extra = document.getElementById(targetID).outerHTML;
            var dom = document.getElementById("master-container");
            dom.innerHTML = getCommentHTML(nick, new Date(), ++MASTER_ID, content, extra) + dom.innerHTML;
            cancel();
            document.getElementById("hint").innerHTML = "";
            document.getElementById("content").value = "";
        }
        function setTarget(id, name) {
            targetID = parseInt(id);
            Name = name;
            document.getElementById("target").innerHTML = "回复 " + name + "（点击取消）";
        }
        function cancel() {
            document.getElementById("target").innerHTML = "发表新留言";
            Name = "";
            targetID = 0;
        }
    </script>
</head>
<body>
<%@ include file="base/nav-bar.jsp"%>

<div class="comment-master-container">
    <div id="master-container">
        <div id="6" class="comment-panel">
            <label class="comment-owner">苏卡不列斯基</label>
            <label class="comment-info">发布于2019-11-19 15:37:18</label>
            <a href="javascript:void(0);" onclick="setTarget(6, '苏卡不列斯基')"><label class="comment-reply">回复</label></a>
            <div class="comment-content">总有人想跟朕对着干，也不看看自己几斤几两。。。</div>
        </div><div id="5" class="comment-panel">
            <label class="comment-owner">【系统】</label>
            <label class="comment-info">发布于2019-11-19 15:36:50</label>
            <a href="javascript:void(0);" onclick="setTarget(5, '【系统】')"><label class="comment-reply">回复</label></a>
            <div class="comment-content">用户【伊米哇嘎奶】已被ip-ban，请大家遵守网络发言规范，和谐交流</div>
        </div><div id="4" class="comment-panel">
            <label class="comment-owner">伊米哇嘎奶</label>
            <label class="comment-info">发布于2019-11-19 15:35:54</label>
            <a href="javascript:void(0);" onclick="setTarget(4, '伊米哇嘎奶')"><label class="comment-reply">回复</label></a>
            <div class="comment-content">说你菜怎么了？FW，Never Mind the Scandal and Liber!</div>
            <div id="3" class="comment-panel">
                <label class="comment-owner">苏卡不列斯基</label>
                <label class="comment-info">发布于2019-11-19 15:35:07</label>
                <a href="javascript:void(0);" onclick="setTarget(3, '苏卡不列斯基')"><label class="comment-reply">回复</label></a>
                <div class="comment-content">什么玩意？？？</div>
                <div id="2" class="comment-panel">
                    <label class="comment-owner">伊米哇嘎奶</label>
                    <label class="comment-info">发布于2019-11-19 15:34:54</label>
                    <a href="javascript:void(0);" onclick="setTarget(2, '伊米哇嘎奶')"><label class="comment-reply">回复</label></a>
                    <div class="comment-content">垃圾玩意，这种东西还好意思当作业交上来？</div>
                </div>    </div>    </div><div id="3" class="comment-panel">
            <label class="comment-owner">苏卡不列斯基</label>
            <label class="comment-info">发布于2019-11-19 15:35:07</label>
            <a href="javascript:void(0);" onclick="setTarget(3, '苏卡不列斯基')"><label class="comment-reply">回复</label></a>
            <div class="comment-content">什么玩意？？？</div>
            <div id="2" class="comment-panel">
                <label class="comment-owner">伊米哇嘎奶</label>
                <label class="comment-info">发布于2019-11-19 15:34:54</label>
                <a href="javascript:void(0);" onclick="setTarget(2, '伊米哇嘎奶')"><label class="comment-reply">回复</label></a>
                <div class="comment-content">垃圾玩意，这种东西还好意思当作业交上来？</div>
            </div>    </div><div id="2" class="comment-panel">
            <label class="comment-owner">伊米哇嘎奶</label>
            <label class="comment-info">发布于2019-11-19 15:34:54</label>
            <a href="javascript:void(0);" onclick="setTarget(2, '伊米哇嘎奶')"><label class="comment-reply">回复</label></a>
            <div class="comment-content">垃圾玩意，这种东西还好意思当作业交上来？</div>
        </div><div id="1" class="comment-panel">
            <label class="comment-owner">苏卡不列斯基</label>
            <label class="comment-info">发布于2019-11-19 15:34:22</label>
            <a href="javascript:void(0);" onclick="setTarget(1, '苏卡不列斯基')"><label class="comment-reply">回复</label></a>
            <div class="comment-content">这玩意太厉害了吧？爱了爱了❤️</div>
        </div>
    </div>
</div>

<div class="comment-input-container">
    <div class="form-div">
        <label for="nick" class="form-middle form-label">昵称</label>
        <input id="nick" class="form-middle" />
        <label class="comment-info form-middle" onclick="cancel()" id="target">发表新留言</label>
        <label class="form-middle comment-info" style="color: red;" id="hint"></label>
    </div>
    <div class="form-div">
        <label for="content" class="form-element form-label">内容</label>
        <textarea id="content" class="form-element form-textarea" ></textarea>
    </div>
    <button onclick="sendComment()" class="form-button">发布</button>
</div>

</body>
</html>
