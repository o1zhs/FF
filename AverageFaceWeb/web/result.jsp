<%--
  Created by IntelliJ IDEA.
  User: liu
  Date: 2018/5/27
  Time: 上午9:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>人脸融合趣味系统</title>
    <script type="application/javascript" src="layui/layui.all.js"></script>
    <link href="layui/css/layui.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="afctf/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href="afctf/css/reser.css" rel="stylesheet" type="text/css" media="all" />
    <link href="afctf/css/countdown.css" rel="stylesheet" type="text/css" media="all" />
    <link href="afctf/css/challenge.css" rel="stylesheet" type="text/css" media="all" />
    <script src="afctf/js/jquery-3.3.1.min.js"></script>
    <script src="afctf/js/layer.js"></script>
    <script src="afctf/js/echarts.min.js"></script>
    <script src="afctf/js/utils.js"></script>
    <script src="afctf/js/challenge.js"></script>
    <script src="afctf/js/inputLimit.js"></script>
    <script type="text/javascript" src="value_js/jquery.min.2.0.js"></script>
    <style>
        .window{
            text-align: center;
            width: 500px;
            position: absolute;
            margin-left: -285px;
            margin-top: -150px;
            top: 45%;
            left: 53%;
            display: block;
            z-index: 0;
            background: #fff;
            padding: 200;
        }
    </style>
</head>
<!--<body style="background: #f1f1f1;">-->
<!-- 表单选项 -->
<body style="background: #f1f1f1">
<div class="bh">
    <div class="header">
        <div class="logo">
            <h1><a href=""><img src="img/logo.png" alt=""></a></h1>
        </div>
        <div class='cssmenu' style="margin-left: 0;flex: 0 0 70%;max-width: 50%;display: block;width: 100%">
            <div class="title">
                <br/>
                <h1>人&nbsp;&nbsp;&nbsp;&nbsp;脸&nbsp;&nbsp;&nbsp;&nbsp;融&nbsp;&nbsp;&nbsp;&nbsp;合&nbsp;&nbsp;&nbsp;&nbsp;趣&nbsp;&nbsp;&nbsp;&nbsp;味&nbsp;&nbsp;&nbsp;&nbsp;系&nbsp;&nbsp;&nbsp;&nbsp;统</h1>
            </div>
        </div>
        <div class='cssmenu' style="margin-left: 0;flex: 0 0 20%;max-width: 20%;display: block;width: 100%">
            <ul>
                <li id="username"><span style="margin-right:20px;max-width:120px;display:block;overflow:hidden;"></span>
                </li>
                <li><span></span></li>
                <li id="logout"><a href="introduce.jsp" style="">平台简介</a></li>
            </ul>
        </div>
        <div class='cssmenu' style="margin-left: 0;flex: 0 0 4.5%;max-width: 10%;display: block;width: 100%">
            <ul>
                <li><a href="" style="border-bottom: 0px"><img src="user.png" alt=""></a></li>
            </ul>
        </div>
    </div>
</div>
<div style="text-align: center;">
    <img src="../AverageFace-master/output_data/president.jpg" style="margin-left: 130px;margin-right: 120px; margin-top: 50px;" width="800" height="600">
    <p></p>
    <button type="button" class="layui-btn" id="test2" onclick="window.location.href='untitled.html'">返回</button>
</div>
<div class="maincontainer">
    <script src='afctf/js/TweenMax.min.js'></script>
    <script src="afctf/js/index.js"></script>
</div>
<div class="ftr1-bg">
    <div class="wrap">
        <div class="footer1">
            <p class="link">
            <span>
            开发人员：<a>张浩森 陈炫宇 陈争妍 常馨宇 李鹏飞</a>
            <br>
            平台开发：<a href="https://www.abigale.xin/">Abigale</a>
            </span>
            </p>
        </div>
    </div>
</div>
<script type="text/javascript" color="0,0,139" count="175" opacity="0.5" src="canvas-nest.min.js"></script>
</body>
</html>
