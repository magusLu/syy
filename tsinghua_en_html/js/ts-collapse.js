$(document).ready(function(){
	var collapseWrap = $(".collapse-list");
	var sollapseItem = $(".collapse-item");
	var timer = null;
	if(!collapseWrap || !collapseWrap) return 
	init();
	function init(){
		collapseWrap.on("click",".collapse-item .collapse-title",handleClick);
	}
	function handleClick(e){
		showContent(e);
	}
	function showContent(e){
		var target = $(e.target);
		var contentEle = target.siblings('.collapse-content');
		if(!contentEle){
			contentEle = target.parents('.collapse-item').find('.collapse-content');
		}
		var isShow = hasClass(contentEle,'cshow');
		if(isShow){
			contentEle.removeClass('cshow');
		}else{
			$('.cshow').removeClass('cshow');
			contentEle.addClass('cshow');
		}
	}
	function hasClass(ele,cls){
		return ele.hasClass(cls);
	}
	function debounce(fn,arg,context,delay){
		if(timer) {
			timer = null;
			console.log('e',timer)
			return	
		}
		timer = setTimeout(function(){
			clearTimeout(timer);
			fn.call(context,arg);
		},delay)
	}

})