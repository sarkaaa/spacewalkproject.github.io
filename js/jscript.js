(function($) {
    "use strict";

    // jQuery for page scrolling feature - requires jQuery Easing plugin
    $(document).on('click', 'a.page-scroll', function(event) {
        var $anchor = $(this);
        $('html, body').stop().animate({
            scrollTop: ($($anchor.attr('href')).offset().top - 50)
        }, 1250, 'easeInOutExpo');
        event.preventDefault();
    });

    // Highlight the top nav as scrolling occurs
    $('body').scrollspy({
        target: '.navbar-fixed-top',
        offset: 51
    });

    // Close responsive menu
    $('.navbar-collapse ul li a').click(function() {
        $('.navbar-toggle:visible').click();
    });

    // Main navigation
    $('#mainNav').affix({
        offset: {
            top: 100
        }
    })

    // Scroll reveal
    window.sr = ScrollReveal();
    sr.reveal('.sr-li', {
        duration: 500,
        scale: 0.8,
        distance: '0px'
    }, 200);

})(jQuery);
