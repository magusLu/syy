$(function(){
	/*Img Max-width*/
	$(".edittext img").each(function(){
		if($(this).width() > $(this).parents('.edittext').width()){
			$(this).width("100%");
			$(this).height("auto");
		}
	});
	
	
	/*$('.searchcon .input').focus(function(){
		$(this).parents('.searchcon').addClass('search_on');
	}).blur(function(){
		$(this).parents('.searchcon').removeClass('search_on');
	}); */
	
	/*头部搜索 */
	$('.sitesearchcon').click(function(){
		$(this).stop(true).animate({'width':'130px'},250);
		$(this).find('.imgico').css({'display':'none'});
		$(this).find('.sitesearch').css({'display':'block'});

	})

	$('.sitesearchcon').mouseleave(function(){
		$(this).stop(true).animate({'width':'36px'},300);
		$(this).find('.imgico').css({'display':'block'});
		$(this).find('.sitesearch').css({'display':'none'});

	})
	/* end*/

	$('.lanbox span').click(function(){
		$(this).parent('.lanbox').prev('.lan').removeClass('cur');
		$(this).parent('.lanbox').slideUp();
	})
	
	if($(window).width() < 768){
		$('.nav .secnav').each(function(){
			$(this).parents('li').addClass('li_on');
			/*$(this).parents('li').hover(function(){
				//$(this).addClass('cur');
				$(this).find('.secnav').stop(true,true).slideDown('fast');
			}, function(){
				//$(this).removeClass('cur');
				$(this).find('.secnav').slideUp('fast');
			}).find('> a').click(function(){ return false;});*/
			
			$(this).prev('a').click(function() {
					if($(this).parent('li').hasClass('cur')){
						$(this).parent('li').removeClass('cur').find('.secnav').slideUp(500);
					}else{
						$(this).parent('li').addClass('cur').find('.secnav').stop(true,true).slideDown(500);
						$(this).parent('li').siblings('li').removeClass('cur').find('.secnav').slideUp(500);
					}
					return false;
					
			}).focus(function(){this.blur();});
		});
	
	}
	
	
	
	$('.sidebarlist .sidesecnav').each(function(){
		$(this).parent('li.active').addClass('cur');
			/*$(this).prev('a').click(function() {
					if($(this).parent('li').hasClass('cur')){
						//$(this).parent('li').removeClass('cur').find('.sidesecnav').slideUp(500);
					}else{
						$(this).parent('li').addClass('cur').find('.sidesecnav').stop(true,true).slideDown(500);
						$(this).parent('li').siblings('li').removeClass('cur').find('.sidesecnav').slideUp(500);
					}
					return false;
					
			}).focus(function(){this.blur();});*/
		});
	
	
	//手机
	
	$('.m_menuico').click(function(){
		if($(this).hasClass('cur')){
			$(this).removeClass('cur');
			$('.m_close').fadeOut();
			$('.pageOverlay').fadeOut();
			$('.header').removeClass('header_mobile');
			$('.container').removeClass('container_on');
		}else{
			$(this).addClass('cur');
			$('.m_close').fadeIn();
			$('.pageOverlay').fadeIn();
			$('.header').addClass('header_mobile');
			$('.container').addClass('container_on');
		}
	})
	
	$('.pageOverlay,.m_close').click(function(){
		$('.m_menuico').removeClass('cur');
		$('.m_close').fadeOut();
		$('.pageOverlay').fadeOut();
		$('.header').removeClass('header_mobile');
		$('.container').removeClass('container_on');
	})
	
	
	
	
	/*$('.memlist ul').each(function(){
			$(this).parents('li').addClass('curico');
		    $('.memlist li.cur ul').show();
			$(this).prev('a').click(function() {
					if($(this).parent('li').hasClass('cur')){
						$(this).parent('li').removeClass('cur').find('ul').slideUp(500);
					}else{
						$(this).parent('li').addClass('cur').find('ul').slideDown(500);
						$(this).parent('li').siblings('li').removeClass('cur').find('ul').slideUp(500);
					}
					return false;
					
			}).focus(function(){this.blur();});
			
	});*/
	
	/*回到顶部*/
	$(window).scroll(function(event){
		var scrollTop = $(this).scrollTop();
		
		if(scrollTop <= ($(window).height()/2) ) {
			$('.gotop').fadeOut();
		} else {
			$('.gotop').fadeIn()
		}
	});
	
	$('.gotop').click(function(){
		$('body,html').stop().animate({
			'scrollTop': 0
		},500);
		return false;
	});
	/**/
	
	/**/
	$('.aboutcon').imagesLoaded(function(){
		var sideh=$('.sidebar').height();
		var conh=$('.aboutcon').height();
		
		$('.sidebar').css({
			'height': sideh > conh ? sideh : conh
		})
	})
	
})



