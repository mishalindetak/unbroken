/*
responsive videos

The MIT License (MIT)

Copyright (c) 2014 S. William Get-Blogging.com https://www.html5andbeyond.com/tumblr-responsive-videos-jquery/
Copyright (c) 2016 Misha Lindetak

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
*/

$(window).resize(function(){

  var max = 0.75 * (window.innerHeight || document.documentElement.clientHeight || document.body.clientHeight);

  $('.tumblr_video_container').each(function(){
    var scaleRatio = $(this).children('.tumblr_video_iframe').attr('data-width') / $(this).children('.tumblr_video_iframe').attr('data-height');
    $(this).add($(this).children('.tumblr_video_iframe')).css('width', '100%');
    var height = $(this).children('.tumblr_video_iframe').width() / scaleRatio;
    if (height > max) {
      height = max;
      $(this).add($(this).children('.tumblr_video_iframe')).css('width', height * scaleRatio);
    }
    $(this).add($(this).children('.tumblr_video_iframe')).css('height', height)
  });

  $('iframe[src*="youtube.com"], iframe[src*="vimeo.com"], iframe[src*="dailymotion.com"]').each(function(){
    var scaleRatio = $(this).prop('width') / $(this).prop('height');
    $(this).css('width','100%');
    var height = $(this).width() / scaleRatio;
    if (height > max) {
      height = max;
      $(this).css('width', height * scaleRatio);
    }
    $(this).css('height', height);
 
  });
 
});

