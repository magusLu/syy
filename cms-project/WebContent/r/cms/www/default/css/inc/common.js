// JavaScript Document
$(function(){
	var windowWidth=window.innerWidth;
	if($(window).width()>960){
		$(".nav li").each(function(){
			/*$(this).hover(function(){
				$(this).find(".nav_down").stop(true,true).slideDown('fast');
			},function(){
				$(this).find(".nav_down").slideUp('fast')
			});

			$(".nav_down .down_item").each(function(){
				$(this).hover(function(){
					$(this).addClass('down_item_on').find('.title').addClass('cur');
					$(this).find(".down_list").stop(true,true).slideDown();
				},function(){
					$(this).removeClass('down_item_on').find('.title').removeClass('cur');
					$(this).find(".down_list").slideUp();
				});
			});*/
		});

		/*宽度大于960的菜单栏*/
		/*$('.nav .nav_li').on("mouseover",function(){
			$(this).children('.nav_on').stop().slideDown();
			$(this).children('.nav_on2').slideDown();
			$(this).find('.nav_on').addClass('nav_on_2');
			$(this).addClass('cur2').siblings('.nav_li').removeClass('cur2');
			$('.nav_li.cur').addClass("cur_off");
		});
		$('.nav .nav_li').on("mouseout",function(){
			$(this).children('.nav_on').stop().slideUp().hide();
			$(this).children('.nav_on2').hide();
			$(this).find('.nav_on').removeClass('nav_on_2');
			$(this).removeClass('cur2').siblings('.nav_li').removeClass('cur2');
			$('.nav_li.cur').removeClass("cur_off");
		});*/
	
	}

	var a=0;
	$(".tit_right").click(function(){
		if(a == 0){
			$(this).addClass('cur');
			$(this).siblings(".side_list").removeClass("side_list_on");
			$(this).next(".side_list").stop(true,true).slideDown();
			a=1;
		}else{
			$(this).removeClass('cur');
			$(this).next(".side_list").slideUp();
			a=0;
		}
	});
	/*宽度小于960的菜单点击*/
	var h = 0;
	/*$('.menu').on("click",function(){
		$('.header').addClass("header_on").find(".nav_out").css("min-height",$(window).height());
		var i=0;
		$('.nav li').click(function(){
			$(this).toggleClass("cur").find(".nav_down").slideToggle();
			$(this).siblings().removeClass("cur").find(".nav_down").slideUp();
				$(this).find(".iconfont").toggleClass("icon-jiahao").toggleClass("icon-jianhao");
				$(this).siblings().find(".iconfont").addClass("icon-jiahao").removeClass("icon-jianhao");
		});
		//$('.nav_out .mainwidth_on').height($(window).height());
		$(".wrapper").height($(window).height());
	});*/
	if($(window).width()<960){
		$(".nav li:not(.nav li:nth-child(1),.nav li:nth-child(6)) > a").attr('href',"javascript:void(0)");

		var nav_click = function () {
			$('.nav li > a').click(function(){
				$(this).toggleClass("cur").next(".nav_down").stop(true,true).slideToggle();
				$(this).parent().siblings().children().removeClass("cur").next(".nav_down").slideUp();
				$(this).children(".iconfont2").toggleClass("icon-jia").toggleClass("icon-jian");
				$(this).parent().siblings('li').find(".iconfont2").addClass("icon-jia").removeClass("icon-jian");
			});
			$('.nav_down .down_item > a').click(function(){
				$(this).toggleClass("cur").next(".down_list").stop(true,true).slideToggle();
				$(this).parent().siblings().children('a').removeClass("cur").next(".down_list").slideUp();
				$(this).find(".iconfont2").toggleClass("icon-jia").toggleClass("icon-jian");
				$(this).parent().siblings().find(".iconfont2").addClass("icon-jia").removeClass("icon-jian");
			});
		}

		$('.menu').on("click",function(){
			$('.header').addClass("header_on").find(".nav_out").css("min-height",$(window).height()-60);
			var i=0;
			nav_click();
			//$(".wrapper").height($(window).height());
		});

		$('.nav_out .close').on("click",function(){
			$('.header').removeClass("header_on").find(".nav_out").css("min-height",0);
			$(".wrapper").height('auto');

			$('.nav li > a').removeClass("cur").next(".nav_down").stop(true,true).slideUp();
			$('.nav li > a').find(".iconfont2").addClass("icon-jia").removeClass("icon-jian");
			$('.nav_down .down_item > a').removeClass("cur").find(".down_list").stop(true,true).slideUp();
			$('.nav_down .down_item > a').find(".iconfont2").addClass("icon-jia").removeClass("icon-jian");

			nav_click();
		});

		$(".container").css({'min-height':$(window).height()-$('.header').height()-$('.footer').height()-50});
	}
	

	/*屏幕滚动*/
	$(window).scroll(function(){
		var scrollTop=getBodySrollTop();
		if(scrollTop>=300){
			$('.top').fadeIn();
		}
		else{
			$('.top').fadeOut();
		}
		if($(window).width()>960){
			if(scrollTop>=98){
				$('.header').addClass('header_on');
				$('.header .logo').hide();
				$('.header .nav .nav_li').addClass('nav_li_2');
			}else{
				$('.header').removeClass('header_on');
				$('.header .nav .nav_li').removeClass('nav_li_2');
				$('.header .logo').show();
			}
		}else{
			$('.header .logo').hide();
		}
	});
	function getBodySrollTop(){
		return document.documentElement.scrollTop || window.pageYOffset || document.body.scrollTop;
	}

	/*搜索*/
	$('.search').on('click',function(){
		$('.sousuo').toggleClass('sousuo_on');
		$('.search a').toggleClass('sea_on');
	});
	$('.sou_btn').click(function(){
		window.location.href="search.html";
	});

	/*返回顶部按钮*/
	$('.top').click(function(){
		$('body,html').animate({'scrollTop':0},700);
		$(this).fadeOut(200);
	});

	function externallinks() {    
     if (!document.getElementsByTagName) return;    
     var anchors = document.getElementsByTagName("a");    
     for (var i=0; i<anchors.length; i++) {    
       var anchor = anchors[i];    
       if (anchor.getAttribute("href") &&    
          anchor.getAttribute("rel") == "external")    
      anchor.target = "_blank";    
      }    
   }    
    window.onload = externallinks;
});
