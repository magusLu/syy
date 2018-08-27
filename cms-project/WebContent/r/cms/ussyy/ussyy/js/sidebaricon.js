$(document).ready(function() {
    var sidebar = $('.catalog-items');
    var timer = null;
    sidebar.on('click', function(e) {
        if(timer) {
            return
        }else{
            var that = this;
            timer = setTimeout(function(){
                var target = $(that).find(".panel-icon");
                if (target.hasClass('col-open')) {
                    target.removeClass("col-open");
                } else {
                    $(".col-open").removeClass("col-open");
                    target.addClass("col-open");
                }
                timer = null;
            },200)
        }
    });
})