$(document).ready(function(){
	// 点击图片放大
	$('.img img').click(function(){
		img();
	});
	// 点击头像进入个人领地
	$('.face img').click(function(){
		icon();
	});
	// 点击加油按钮
	$('.jy').click(function(){
		jiayou.jy('100000000000000000')
	});
	// 点击评论按钮
	$('.pl').click(function(){
		pinlun()
	});
	// 点击分享按钮
	$('.fx').click(function(){
		share()
	});
	// 点击进入加油列表
	$('.gengduo').click(function(){
		jiayoulist();
	});
	// 加油列表的个人领地
	$('.plface a').click(function(){
		face();
	});
});
//function img(){
//	alert('图片放大');
//}
//function face(){
//	alert('个人领地');
//}
//function jy(){
//	alert('加油');
//}
//function pl(){
//	alert('评论');
//}
//function fx(){
//	alert('分享');
//}
//function gd(){
//	alert('进入加油列表');
//}
