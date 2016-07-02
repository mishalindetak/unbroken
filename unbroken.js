/*
Copyright (c) 2016 Misha Lindetak

Permission to use, copy, modify, and/or distribute this software for any
purpose with or without fee is hereby granted, provided that the above
copyright notice and this permission notice appear in all copies.

THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
*/

// Previous/next page navigation
$(document).keydown(function(e){
  if (e.target && e.target.tagName == 'TEXTAREA' || e.target.tagName == 'INPUT') {
    return true;
  }
  switch(e.keyCode) {
    case 72: case 80: $('#prevpage')[0].click(); break;
    case 76: case 78: $('#nextpage')[0].click(); break;
  }
});

$(document).ready(function() {

  // Trigger resizing of videos
  $(window).resize();

  // Enable j/k scrolling
  $('.post').keynav();

  // Enable lightbox
  $(document).delegate('*[data-toggle="lightbox"]', 'click', function(event) {
      event.preventDefault();
      $(this).ekkoLightbox();
  });

});
