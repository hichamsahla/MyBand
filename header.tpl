<nav class="nav">

    <ul>

        <li><a href="?page=home">HomePage</a></li>
        <li><a href="?page=articles">News</a></li>
        <li><a href="?page=about">About Lacrim</a></li>
        <li><a href="?page=contact">Contact Management</a></li>
    </ul>
</nav>
<img src="./images/logo1.png" alt="logo" id="logo1"/>

<div class="slider" id="main-slider"><!-- outermost container element -->
    <div class="slider-wrapper"><!-- innermost wrapper element -->
        <img src="./images/slide1.jpg" alt="First" class="slide" /><!-- slides -->
        <img src="./images/slide2.jpg" alt="Second" class="slide" />
        <img src="./images/slide3.jpg" alt="Third" class="slide" />
    </div>
</div>
<script>
    (function() {

    function Slideshow( element ) {
    this.el = document.querySelector( element );
    this.init();
    }

    Slideshow.prototype = {
    init: function() {
    this.wrapper = this.el.querySelector( ".slider-wrapper" );
    this.slides = this.el.querySelectorAll( ".slide" );
    this.previous = this.el.querySelector( ".slider-previous" );
    this.next = this.el.querySelector( ".slider-next" );
    this.index = 0;
    this.total = this.slides.length;
    this.timer = null;

    this.action();
    this.stopStart();
    },
    _slideTo: function( slide ) {
    var currentSlide = this.slides[slide];
    currentSlide.style.opacity = 1;

    for( var i = 0; i < this.slides.length; i++ ) {
    var slide = this.slides[i];
    if( slide !== currentSlide ) {
    slide.style.opacity = 0;
    }
    }
    },
    action: function() {
    var self = this;
    self.timer = setInterval(function() {
    self.index++;
    if( self.index == self.slides.length ) {
    self.index = 0;
    }
    self._slideTo( self.index );

    }, 3000);
    },
    stopStart: function() {
    var self = this;
    self.el.addEventListener( "mouseover", function() {
    clearInterval( self.timer );
    self.timer = null;

    }, false);
    self.el.addEventListener( "mouseout", function() {
    self.action();

    }, false);
    }


    };

    document.addEventListener( "DOMContentLoaded", function() {

    var slider = new Slideshow( "#main-slider" );

    });


    })();

</script>






