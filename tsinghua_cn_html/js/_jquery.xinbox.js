(function($){
	$.fn.xinBox = function(options){
		var defaults = {

			widthpercent:0.70,	//只能用 0-1之间，其他的都转为0.8， 见17行左右
			maxWidth:1150,
			minWidth:930,
			innerWidth:930,
			//innerHeight:1000,
			positionRight:50,
			mouseWheelSpeed:60,
			defaultHref: false,
			opacity:.5
		},
		options = $.extend(defaults, options),
		ifmaxWidth,
		isIE = $.browser.msie && !$.support.opacity, // feature detection alone gave a false positive on at least one phone browser and on some development versions of Chrome.
		isIE6 = isIE && $.browser.version < 7;

		var winWidth = window.innerWidth ? window.innerWidth : $(window).width();
		var winHeight = window.innerHeight ? window.innerHeight : $(window).height();
		
		//options.href = options.href || $(element).attr('href');


		if(! $('.xinsidebox').length > 0){
			$("body").append('<div class="xinsidebox"><div class="xboxOverlay"></div><div class="xboxWrapper"><div class="xboxClose"></div><div class="xboxContent"><div class="xboxLoadedContent"><div class="xboxHeader"></div><div class="xboxArticle"></div><div class="xboxFooter"></div></div></div></div></div>');
		}


		
		if(options.widthpercent > 1 || options.widthpercent < 0 || isNaN(options.widthpercent)){	options.widthpercent = 0.8	}
		
		var resizefun = function(){
			var winWidth = window.innerWidth ? window.innerWidth : $(window).width();
			var winHeight = window.innerHeight ? window.innerHeight : $(window).height();
			ifmaxWidth = ( $(window).width() * options.widthpercent ) > options.maxWidth ? options.maxWidth : ( $(window).width() * options.widthpercent )
			$('.xboxArticle').height(winHeight - $('.xboxHeader').outerHeight());
			//$('.xboxOverlay').height($(window).height() + 100).width($(window).width()).css('opacity',options.opacity);

			$('.xboxWrapper').width(
				ifmaxWidth < options.minWidth ? options.minWidth : ifmaxWidth
			);
			$('.xboxWrapper').css({
				'right': (winWidth - $('.xboxWrapper').width()) / 2
			});
				//console.log(winWidth + '/'+ $('.xboxWrapper').width())
		}
		resizefun()
		$(window).resize(function(){
			resizefun()
		});

		if (isIE6) {
			var scrollfun = function(){
				$('.xinsidebox').css({"top":$(window).scrollTop()})
			}
			scrollfun();
			$(window).scroll(function(event) {
				scrollfun();
			});
		}
		

		$(window).bind('resize.xinBox', defaults.reposition);


		var ajaxapi = $('.xboxArticle').jScrollPane({
			autoReinitialise: true,
			//animateScroll: true,
			//maintainPosition:false,
			mouseWheelSpeed: options.mouseWheelSpeed,
			horizontalGutter: 30,
			showArrows:true
		}).data('jsp');

		
		if(! options.defaultHref == false){
			$('.pageloading').fadeIn();
			ajaxapi.getContentPane().load(options.defaultHref,function(){
				ajaxapi.reinitialise();
				ajaxapi.scrollTo(0,0);
				
				//$("body").css("overflow","hidden");
				$('.xinsidebox').show();
				$('.xboxOverlay').fadeIn();
				$('.xboxWrapper').show().animate({
					//'right': (1 - options.widthpercent)/2 * 100 + '%'
					'right': (winWidth - $('.xboxWrapper').width()) / 2
				});

				$('.select').resetSS();
				$('.pageloading').fadeOut();
				

			});
			$('.xboxHeader').load(options.defaultHref + ' .popbreadcrumb',function(){
				
			})
		}else{
		}


		$(this).on('click', function(e){
			return false;
		}).on('mousedown', function(e){
			if(3 == e.which){
				return false;
			}
			
			$('.pageloading').fadeIn();

			//添加#id-1标识
			window.location.hash= encodeURI(this.href);
			ajaxapi.getContentPane().load(this.href,function(){
				ajaxapi.reinitialise();
				ajaxapi.scrollTo(0,0);
				
				//$("body").css("overflow","hidden");
				$('.xinsidebox').show();
				$('.xboxOverlay').fadeIn();
				$('.xboxWrapper').show().animate({
					//'right': (1 - options.widthpercent)/2 * 100 + '%'
					'right': (winWidth - $('.xboxWrapper').width()) / 2

				});

				$('.select').resetSS();
				$('.pageloading').fadeOut();
			});
			$('.xboxHeader').load(this.href + ' .popbreadcrumb',function(){
				
			});
			return false;
		});
		
		
		$('.xboxOverlay, .xboxClose').on('click', function(){
			$('.xboxOverlay').fadeOut('fast');
			$('.xboxWrapper').fadeOut('fast',function(){
				$('.xinsidebox').hide();
				$('.xboxWrapper').hide().css({'right':'-100%'});
				//$("body").css("overflow","auto");
			});
			
			//取消#id-1 标识
			var st = parseInt($(window).scrollTop());
			window.location.hash='';
			$('html,body').scrollTop(st);
		});

		$('.xboxArticle').bind('jsp-scroll-y',function(event, scrollPositionY){
			$('.popnav').css({'marginTop':scrollPositionY})
		});
		/*$('.xboxArticle').bind('jsp-scroll-y',function(event, scrollPositionY, isAtTop, isAtBottom){

				
				$('.jspPane').mousewheel(function(event, delta, deltaX, deltaY) {
					if(deltaY < 0){
					}
				});
		})*/

		/*$('.xboxOverlay').mousewheel(function(event, delta, deltaX, deltaY) {
			return false;
		});*/
		$(".xinsidebox").mousewheel(function(event, delta) {
			event.preventDefault();
		});
	};
})(jQuery); 


