$(document).ready(function(){
	// 点赞
	$('.zan').click(function(){
		share();
	});
	// 点击图片进入详情
	$('.img img').click(function(){
		img();
	});
	// 点击标题进入详情
	$(".title").click(function(){
		img()
	});
                
});
//function share(){
//	alert('点赞11');
//}
//function img(){
//	alert('进入详情');
//}