<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页</title>
<link rel="stylesheet" href="client/css/main.css" type="text/css"/>
<link type="text/css" href="css/autoplay.css" rel="stylesheet" />
</head>
<body calss="main">
<!-- 1.网页顶部start -->
<div id="dibhead">
<table cellspaceing="0" calss="headtable">
<tr>
<td>
<a href="#"><img alt="小猪佩奇" src="client/images/logo.jpg" width="200" height="60" border="0" /></a>
</td>
<td style="text-align:right">
<img alt="购物车" src="client/images/cart.png" width="26" height="23" style="margin-bottom:-4px" />&nbsp;<a href="#">我的账户</a>
| <a href="#">帮助中心</a>
| <a href="#">注销</a>
| <a href="register.html">新用户注册</a>
</td>
</tr>
</table>
</div>
<!-- 网页顶部结束 -->
<!-- 网页菜单列表 -->
<div id="divmenu">
<a href="#">查询</a>
<a href="#">借阅</a>
<a href="#" style="color:#FFFF00">全部图书目录</a>
</div>
<div id="divsearch">
<form action="#" id="searchform">
<table width="100%" border="0" cellspacing="0">
<tr>
<td style="text-align:right;padding-right:220px">
Search
<input type="text" name="textfield" class="inputtable" id="textfield" value="请输入书名" onmouserover="this.foocus();"
onclick="my_click(this,'textfield');" onBlur="my_blur(this,'textfield');" />
<a href="#">
<img alt="搜素" src="client/images/serchbutton.png" border="0" style="margin-bottom:-4px" onclick="search()" />
</a>
</td>
</tr>
</table>
</form>
</div>
<!-- 网页首页轮播图 -->
<div id="box_autoplay">
<div class="list">
<ul>
<li><img alt="" src="client/ad/031019cdba1a91dc2d324f67c82b83a7.jpg" width="1000" height="335" /></li>
<li><img alt="" src="client/ad/3dcf85d67fbbdc29418ac0bc0e9de1fd.jpg" width="1000" height="335" /></li>
<li><img alt="" src="client/ad/62e74d09a526f5250c3c16f5bbb7d342.jpg" width="1000" height="335" /></li>
<li><img alt="" src="client/ad/7941f6a91755e0fb5d65e82e30e8a0ca.jpg" width="1000" height="335" /></li>
<li><img alt="" src="client/ad/f659a9f0e0bface85c180eff15d27094.jpg" width="1000" height="335" /></li>
<script>
            window.onload = function(){

                var images = document.getElementsByTagName('li');
                var pos = 0;
                var len = images.length;

                setInterval(function(){

                    images[pos].style.display = 'none';
                    pos = ++pos == len ? 0 : pos;
                    images[pos].style.display = 'inline';

                },1000);

            };
        </script>
</ul>
</div>
</div>
<!-- 公告栏 -->
<div id="divcontent">
<table width="900px" border="0" cellspacing="0">
<tr>
<td width="497">
<img alt="" src="client/images/announcement_457px_1153631_easyicon.net.png" width="497" height="38" />
<table cellspacing="0" class="ctl">
<tr>
<td width="485" height="29">啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦</td>
</tr>
</table>
</td>
<td style="padding:5px 15px 10px 40px">
<table width="100%" border="0" cellspacing="0">
<tr>
<td>
<img alt="" src="client/images/logo.jpg" width="126" height="29" />
</td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0">
<tr>
<td style="width:80;text-align:center">
<a href="#">
<img alt="" src="client/images/logo.jpg" width="102" height="130" border="0" />
</a>
<br />
</td>
<td style="width:80;text-align:center">
<a href="#">
<img alt="" src="client/images/logo.jpg" width="102" height="130" border="0" />
</a>
<br />
</td>
</tr>
</table>
</td>
</tr>
</table>
</div>
<!-- 网页底部 -->
<div id="divfoot">
<table width="100%" border="0">
<tr>
<td rowspan="2" style="width:10%">
<img alt="" src="client/images/logo.jpg" width="195" height="50" style="margin-left:175px" />
</td>
<td style="padding-top:5px;padding-left:50px">
<a href="#">
<font color="#747556"><b>CONTACT US</b></font>
</a>
</td>
</tr>
<tr>
<td style="padding-left:50px">
<font color="#CCCCCC">
<b>COPYRIGHT 2018 &copy;BookStore All.</b>
</font>
</td>
</tr>
</table>
</div>
</body>
</html>