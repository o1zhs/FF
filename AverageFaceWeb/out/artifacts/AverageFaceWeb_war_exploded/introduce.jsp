<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>电影信息管理系统</title>
    <script type="application/javascript" src="layui/layui.all.js"></script>
    <link href="layui/css/layui.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="afctf/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href="afctf/css/reser.css" rel="stylesheet" type="text/css" media="all" />
    <link href="afctf/css/countdown.css" rel="stylesheet" type="text/css" media="all" />
    <link href="afctf/css/challenge.css" rel="stylesheet" type="text/css" media="all" />
    <script src="afctf/js/jquery-3.3.1.min.js"></script>
    <script src="afctf/js/layer/layer.js"></script>
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
            margin-top: -125px;
            top: 45%;
            left: 53%;
            display: block;
            z-index: 2000;
            background: #fff;
            padding: 200;
        }
    </style>
</head>
<!--<body style="background: #f1f1f1;">-->
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
        </div>
        <div class='cssmenu' style="margin-left: 0;flex: 0 0 4.5%;max-width: 10%;display: block;width: 100%">
        </div>
    </div>
</div>
<div class="layui-container">
    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
        <legend style="text-align: center;">平台简介</legend>
    </fieldset>
    <ul class="layui-timeline" style="margin-left: 120px;">
        <li class="layui-timeline-item">
            <i class="layui-icon layui-timeline-axis"></i>
            <div class="layui-timeline-content layui-text">
                <div class="layui-timeline-title">平台：</div>
                人脸融合系统结合人脸识别算法和深度学习引擎，快速精准地定位人脸关键点，将多张人脸照片区分性别后进行面部层面融合，或从集体照片中截取面部照片进行融合，使生成的图片既有五官特点，也呈现出对应形象的外貌特征
            </div>
        </li>
    </ul>
    <div style="text-align: center;">
        <button id="" type="submit" class="layui-btn layui-btn-radius" onclick="window.location.href='untitled.html'">返回</button>
    </div>
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
<script type="text/javascript">
    /* 鼠标特效 */
    var a_idx = 0;
    // jQuery(document).ready(function($) {
    document.ready = function() {
        $("body").click(function(e) {
            var a = new Array("富强", "民主", "文明", "和谐", "自由", "平等", "公正" ,"法治", "爱国", "敬业", "诚信", "友善");
            var $i = $("<span/>").text(a[a_idx]);
            a_idx = (a_idx + 1) % a.length;
            var x = e.pageX,
                y = e.pageY;
            $i.css({
                "z-index": 999999999999999999999999999999999999999999999999999999999999999999999,
                "top": y - 20,
                "left": x,
                "position": "absolute",
                "font-weight": "bold",
                "font-size": "14px",
                "color": "#ff0000"
            });
            $("body").append($i);
            $i.animate({
                    "top": y - 180,
                    "opacity": 0
                },
                1500,
                function() {
                    $i.remove();
                });
        });
    };
</script>
</body>
</html>