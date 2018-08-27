$(document).ready(function(){
    layer.config({
        type:1,
        skin:'tips-pop',
        title:false,
        fixed:true,
        resize:false,
        closeBtn:false,
        shade:0
    });

  function getTemplate(phone,email){
    var t = '<div class="tips-avatar">' +
                '<img class="js-avatar" src="" alt="">' +
                '<div class="img-load">'+
                    '<div id="circularG">' +
                        '<div id="circularG_1" class="circularG"></div>' +
                        '<div id="circularG_2" class="circularG"></div>' +
                        '<div id="circularG_3" class="circularG"></div>' +
                        '<div id="circularG_4" class="circularG"></div>' +
                        '<div id="circularG_5" class="circularG"></div>' +
                        '<div id="circularG_6" class="circularG"></div>' +
                        '<div id="circularG_7" class="circularG"></div>' +
                        '<div id="circularG_8" class="circularG"></div>' +
                    '</div>'+
                '</div>' +
            '</div>' +
            '<div class="tips-info">' +
                '<div class="tips-info--items">' +
                    '<i class="icon icon-phone"></i><span>' + phone + '</span>' +
                '</div>' +
                '<div class="tips-info--items">' +
                    '<i class="icon icon-email"></i><span>' + email + '</span>' +
                '</div>' +
            '</div>';
            return t
    }                               
    function Info(){
        function init(){
            $('.info-tips').on('mouseover',handleTragger);
            $('.info-tips').on('mouseout',closeTips);
        };
        function closeTips(){
            layer.closeAll('page');
        }
        function handleTragger(e){
            closeTips();
            var t = $(e.target);
            var phone = getInformation(t,'data-phone');
            var email = getInformation(t,'data-email');
            var img = getInformation(t,'data-img');
            var template = getTemplate(phone,email);
            var offset = getPos(t);
            layer.open({
                offset:[offset.top,offset.left],
                content:template,
                success:function(){
                    loadImg(img);
                }
            });
        }
        function loadImg(url){
            var img = new Image();
            var imgEle = $('.js-avatar');
            if(!url){
                imgLoadCb(imgEle,'../img/tips_img.jpg',imgEle);
                return
            }
            img.onload = function(){
                console.log('load')
                img.onload = null;
                imgLoadCb(imgEle,url,imgEle);
            }
            img.onerror = function(){
                img.onerror = null;
                /*图片地址错误时将默认url传入第一个参数*/
                imgLoadCb(imgEle,'../img/tips_img.jpg',imgEle);

            }
            img.src= url;
        }
        function imgLoadCb(t,url,ele){
            ele.parent().find('.img-load').hide();
            t.attr("src",url);
        }
        function getInformation(ele,info){
            var info = ele.attr(info);
            info = info?info:'无';
            return info
        }  
        function getPos(t){
            var tWidth = t.width()
            var tHeight= t.height();
            var windoWidth = $(window).width();
            var pos = t.offset();
            var infoLeft = pos.left;
            var infoTop = pos.top;
            var left = infoLeft + tWidth;
            var top = infoTop + tHeight - 78;
            if(left >=  windoWidth - 268){
                left = windoWidth - 268;
                top = infoTop - 85;
            }
            return {
                left:left,
                top:top
            }
        }   
        init();
    }
    Info();
   
})