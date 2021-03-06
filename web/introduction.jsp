<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <link type="text/css" rel="stylesheet" href="resources/css/master.css"/>
    <title>课程介绍-Web技术</title>
</head>
<body>
<%@ include file="base/nav-bar.jsp"%>

<div class="master-container">
    <h1>Web 技术</h1>
    <h2>简介</h2>
    <p>Web是一种典型的分布式应用结构。Web应用中的每一次信息交换都要涉及客户端和服务端。因此，Web开发技术大体上也可以被分为客户端技术和服务端技术两大类。这里对这些技术作简要介绍，以使读者对Web技术有一个总体的认识。</p>
    <h2>Web客户端技术</h2>
    <p>Web客户端的主要任务是展现信息内容。Web客户端设计技术主要包括：HTML语言、Java Applets、脚本程序、CSS、DHTML、插件技术以及VRML技术。</p>
    <ol>
        <li>HTML语言。HTML是Hypertext Markup Language（超文本标记语言）的缩写，它是构成Web页面的主要工具。</li>
        <li>Java Applets，即Java小应用程序。使用Java语言创建小应用程序，浏览器可以将Java Applets从服务器下载到浏览器，在浏览器所在的机器上运行。Java Applets可提供动画、音频和音乐等多媒体服务。1996年，著名的Netscape浏览器在其2.0版本中率先提供了对Java Applets的支持，随后，Microsoft的IE3.0也在这一年开始支持Java技术。Java Applets使得Web页面从只能展现静态的文本或图像信息，发展到可以动态展现丰富多样的信息。动态Web页面，不仅仅表现为网页的视觉展示方式上，更重要的是他可以对网页中的内容进行控制与修改。</li>
        <li>脚本程序。他是嵌入在HTML文档中的程序。使用脚本程序可以创建动态页面，大大提高交互性。用于编写脚本程序的语言主要有JavaScript和VBScript。JavaScript由Netscape公司开发，具有易于使用、变量类型灵活和无须编译等特点。VBScript由Microsoft公司开发，与JavaScript一样，可用于设计交互的Web页面。要说明的是，虽然JavaScript和VBScript语言最初都是为创建客户端动态页面而设计的，但他们都可以用于服务端脚本程序的编写。客户端脚本与服务端脚本程序的区别在于执行的位置不同，前者在客户端机器执行，而后者是在Web服务端机器执行。</li>
        <li>CSS(Cascading Style Sheets)，即级联样式表。通过在HTML文档中设立样式表，可以统一控制HTML中各标志显示属性。1996年底，W3C提出了CSS的建议标准，同年，IE3.0引入了对CSS的支持。CSS大大提高了开发者对信息展现格式的控制能力，1997年的Netscape4.0不但支持CSS，而且增加了许多Netscape公司自定义的动态HTML标记，这些标记在CSS的基础上，让HTML页面中的各种要素“活动”了起来。</li>
        <li>DHTML(Dynamic HTML)，即动态HTML。1997年，Microsoft发布了IE4.0，并将动态HTML标记、CSS和动态对象（Dynamic Object Model）发展成为一套完整、实用、高效的客户端开发技术体系，Microsoft称其为DHTML。同样是实现HTML页面的动态效果，DHTML技术无须启动Java虚拟机或其他脚本环境，可以在浏览器的支持下，获得更好的展现效果和更高的执行效率。</li>
        <li>插件技术。这一技术大大丰富了浏览器的多媒体信息展示功能，常见的插件包括QuickTime、Realplayer、Media Player和Flash等。为了在HTML页面中实现音频、视频等更为复杂的多媒体应用，1996年的Netscape2.0成功地引入了对QuickTime插件的支持，插件这种开发方式也迅速风靡了浏览器的世界。同年，在Windows平台上，Microsoft将COM和ActiveX技术应用于IE浏览器中，其推出的IE3.0正式支持在HTML页面中插入ActiveX控件，这为其他厂商扩展Web客户端的信息展现方式提供了方便的途径。1999年，Realplayer插件先后在Netscape和IE浏览器中取得了成功，与此同时，Microsoft自己的媒体播放插件Media Player也被预装到了各种Windows版本之中。同样具有重要意义的还有Flash插件的问世：20世纪90年代初期，Jonathan Gay在FutureWave公司开发了一种名为Future Splash Animator 的二维矢量动画展示工具，1996年，Macromedia公司收购了FutureWave，并将Jonathan Gayde 的发明改名为我们熟悉的Flash。从此，Flash动画成了Web开发者表现自我、展示个性的最佳方式。</li>
        <li>VRML技术。Web已经由静态步入动态，并正在逐渐由二维走向三维，将用户带入五彩缤纷的虚拟现实世界。VRML是创建三维对象最重要的工具，它是一种基于文本的语言，并可运行于任何平台。</li>
    </ol>
    <h2>Web服务端技术</h2>
    <p>与Web客户端技术从静态向动态的演进过程类似，Web服务端的开发技术也是由静态向动态逐渐发展、完善起来的。Web服务器技术主要包括服务器、CGI、PHP、ASP、ASP.NET、Servlet和JSP技术。</p>
    <ol>
        <li>服务器技术。主要指有关Web服务器构建的基本技术，包括服务器策略与结构设计、服务器软硬件的选择及其他有关服务器构建的问题。</li>
        <li>CGI(Common Gateway Interface)技术，即公共网关接口技术。最早的Web服务器简单地响应浏览器发来的HTTP请求，并将存储在服务器上的HTML文件返回给浏览器。CGI是第一种使服务器能根据运行时的具体情况，动态生成HTML页面的技术。1993年，NCSA（National Center佛日Supercomputing Applications）提出CGI1.0 的标准草案，之后分别在1995 年和1997年，制定了CGI1.1和1.2标准。CGI技术允许服务端的应用程序根据客户端的请求，动态生成HTML页面，这使客户端和服务端的动态信息交换成为了可能。随着CGI技术的普及，聊天室、论坛、电子商务、信息查询、全文检索等各式各样的Web应用蓬勃兴起，人们可以享受到信息检索、信息交换、信息处理等各更为便捷的信息服务了。</li>
        <li>PHP(Personal Home Page Tools)技术。1994年，Rasmus Lerdorf发明了专用于Web服务端编程的PHP语言。与以往的CGI程序不同，PHP语言将HTML代码和PHP指令合成为完整的服务端动态页面，Web应用的开发者可以用一种更加简便、快捷的方式实现动态Web功能。</li>
        <li>ASP(Active Server Pages)技术，即活动服务器页面技术。1996年，Microsoft借鉴Php的思想，在其Web服务器IIS 3.0中引入了ASP技术。ASP使用的脚本语言是我们熟悉的VBScript和Javascript。借助Microsoft Visual Studio等开发工具在市场上的成功，ASP迅速成为Windows系统下Web服务端的主流开发技术。</li>
        <li>ASP.NET技术。由于它使用C#语言代替ASP技术的JavaScripe脚本语言，用编译代替了逐句解释，提高了运行效率，ASP.NET是建立.NET Framework的公共语言运行库上的编程框架，可用于在服务器上生成功能强大的Web应用程序，代替以前在WEB网页中加入ASP脚本代码，使界面设计与程序设计以不同的文件分离，复用性和维护性得到提高，已经成为面向下一代企业级网络计算的Web平台，是对传统ASP技术的重大升级和更新。</li>
        <li>Servlet、JSP技术。以Sun公司为首的Java阵营于1997和1998年分别推出了Servlet和JSP技术。JSP的组合让Java开发者同时拥有了类似CGI程序的集中处理功能和类似PHP的HTML嵌入功能，此外，Java的运行时编译技术也大大提高了Servlet和JSP的执行效率。Servlet和JSP被后来的JavaEE平台吸纳为核心技术。</li>
    </ol>
</div>

<div class="bottom-bar bottom-bar-extend">
    <%@ include file="base/footer.jsp"%>
</div>

</body>
</html>
