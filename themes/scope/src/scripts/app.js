
$(document).ready(function() {

    $('.main-carousel').flickity({
        // options
        cellAlign: 'left',
        contain: true,
        prevNextButtons: false,
        imagesLoaded: true,
        autoPlay: true
    });

    $('.test').flickity({
        // options
        cellAlign: 'left',
        contain: true,
        prevNextButtons: false,
        imagesLoaded: true,
        autoPlay: false
    });

});
