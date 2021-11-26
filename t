<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <title>添加图文组合信息窗口</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <style>
    body,
    html,
    #container {
        overflow: hidden;
        width: 100%;
        height: 100%;
        margin: 0;
        font-family: "微软雅黑";
    }
    </style>
    <script src="http://api.map.baidu.com/api?type=webgl&v=1.0&ak=iIKLTcSjlSzyQnYMFBvZYKPGe0tCD8Il"></script>
</head>
<body>
    <div id="container"></div>
</body>
</html>
<script>
var map = new BMapGL.Map('container');
map.centerAndZoom(new BMapGL.Point(90.92534058808215,31.00076740971976), 6);
map.enableScrollWheelZoom(true);
// 创建添加点标记
var marker = new BMapGL.Marker(new BMapGL.Point(86.92534058808215,28.00076740971976));
map.addOverlay(marker);
// 创建图文信息窗口
var sContent = `<h4 style='margin:0 0 5px 0;'>珠穆朗玛峰</h4>
    <img style='float:right;margin:0 4px 22px' id='imgDemo' src='https://pic1.zhimg.com/v2-319f1d8357f4ec8b4e16c39cc9f80074_r.jpg?source=172ae18b' width='139' height='104'/>
    <p style='margin:0;line-height:1.5;font-size:13px;text-indent:2em'>
    珠穆朗玛峰（Jo-mo glang-ma），简称珠峰，又意译作圣母峰，位于中国和尼泊尔交界的喜马拉雅山脉之上，终年积雪。 是世界海拔第一高峰。...
    </p></div>`;
var infoWindow = new BMapGL.InfoWindow(sContent);
// marker添加点击事件
marker.addEventListener('click', function () {
    this.openInfoWindow(infoWindow);
    // 图片加载完毕重绘infoWindow
    document.getElementById('imgDemo').onload = function () {
        infoWindow.redraw(); // 防止在网速较慢时生成的信息框高度比图片总高度小，导致图片部分被隐藏
    };
});
//+++++++++++++++++++++++++++++++++++++++++++++++
var marker1 = new BMapGL.Marker(new BMapGL.Point(100.264058808215,36.8276740971976));
map.addOverlay(marker1);
  
var sContent1 = `<h4 style='margin:0 0 5px 0;'>青海湖</h4>
    <img style='float:right;margin:0 4px 22px' id='imgDemo1' src='https://pic1.zhimg.com/50/v2-3754620adcce3de0edce55c768f25679_hd.jpg?source=1940ef5c' width='139' height='104'/>
    <p style='margin:0;line-height:1.5;font-size:13px;text-indent:2em'>
    青海湖长105公里，宽63公里，湖面海拔3196米，是中国最大的内陆湖泊，地处青藏高原的东北部，西宁市的西北部。...
    </p></div>`;
var infoWindow1 = new BMapGL.InfoWindow(sContent1);
// marker添加点击事件
marker1.addEventListener('click', function () {
    this.openInfoWindow(infoWindow1);
    // 图片加载完毕重绘infoWindow
    document.getElementById('imgDemo1').onload = function () {
        infoWindow1.redraw(); // 防止在网速较慢时生成的信息框高度比图片总高度小，导致图片部分被隐藏
    };
});

//+++++++++++++++++++++++++++++++++++++++++++++++
var marker2 = new BMapGL.Marker(new BMapGL.Point(95.503, 37.492));
map.addOverlay(marker2);
  
var sContent2 = `<h4 style='margin:0 0 5px 0;'>小柴旦</h4>
    <img style='float:right;margin:0 4px 22px' id='imgDemo2' src='https://tse2-mm.cn.bing.net/th/id/OIP-C.t8hOTKwmuVIt25fop8zUSQHaD-?pid=ImgDet&rs=1' width='139' height='104'/>
    <p style='margin:0;line-height:1.5;font-size:13px;text-indent:2em'>
    小柴旦湖也称小柴达木湖，蒙语称巴嘎柴达木湖，在大柴旦镇西南方向，距离大柴旦镇约20公里，位于215国道旁，新老315线均沿湖边而过，交通十分便利。 小柴旦湖但它其实并不小，小柴旦湖面积约69平方公里，是整个大柴旦境内最大的一个咸水湖。...
    </p></div>`;
var infoWindow2 = new BMapGL.InfoWindow(sContent2);
// marker添加点击事件
marker2.addEventListener('click', function () {
    this.openInfoWindow(infoWindow2);
    // 图片加载完毕重绘infoWindow
    document.getElementById('imgDemo2').onload = function () {
        infoWindow2.redraw(); // 防止在网速较慢时生成的信息框高度比图片总高度小，导致图片部分被隐藏
    };
});  
</script>
