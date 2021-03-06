define(`BLOCK', `{block:$1}$2{/block:$1}')

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
dnl Bootstrap documentation says the above three meta tags MUST be before anything else. Tumblr messes that up but it doesn't seem to be a problem.

define(`SELECT', `<meta name="select:$1" content="$2" title="$3">')

define(`BS',
` SELECT(`Bootswatch',$1,$1)
  SELECT(`BSIntegrity',$2,$1)
')

BS(`cerulean',	`sha384-fUMURLTdEcpeYHly3PAwggI3l2UvdHNg/I+8LRph7hLDcAZm77YfDx3Tjum9d3vK')
BS(`cosmo',	`sha384-OiWEn8WwtH+084y4yW2YhhH6z/qTSecHZuk/eiWtnvLtU+Z8lpDsmhOKkex6YARr')
BS(`cyborg',	`sha384-uSbimwRPo7PKyTL6azsx1CcBce/X9Qg+wX1MAjNV1gAkSXYveZbZeMMyJghdsSol')
BS(`darkly',	`sha384-kVo/Eh0sv7ZdiwZK32nRsp1FrDT3sLRLx3zVpSSTI9UdO5H02LJNLBg5F1gwvKg0')
BS(`flatly',	`sha384-XYCjB+hFAjSbgf9yKUgbysEjaVLOXhCgATTEBpCqT1R3jvG5LGRAK5ZIyRbH5vpX')
BS(`journal',	`sha384-r/qnS4YZBLuBSKeVc+sM4eUYUiJMFhkHfx1nwlErHhTd+NgeJlN/NiiTd6jbKJzm')
BS(`lumen',	`sha384-mvYjhBJXQ9VlNETV/xXShy849GsBHnKzVVudnMOcWUVM/6Nd2ksj8VNng5f8ylyX')
BS(`paper',	`sha384-2mX2PSpkRSXLQzmNzH3gwK6srb06+OfbDlYjbog8LQuALYJjuQ3+Yzy2JIWNV9rW')
BS(`readable',	`sha384-/x/+iIbAU4qS3UecK7KIjLZdUilKKCjUFVdwFx8ba7S/WvxbrYeQuKEt0n/HWqTx')
BS(`sandstone',	`sha384-QqZs0aSOGFan3GWVdP4PyCBp6icaF/4n8Q+wsmZUTiiVIqE4r4tFYcb8Osf+8y45')
BS(`simplex',	`sha384-/Ib5WUYOh/fqe9wT9MDBX+VgUWQuUf8oDH3yuR9Kr+6Y5ejq92KR8LEuCbRiGZpG')
BS(`slate',	`sha384-X9JiR5BtXUXiV6R3XuMyVGefFyy+18PHpBwaMfteb/vd2RrK6Gt4KPenkQyWLxCC')
BS(`spacelab',	`sha384-PpvUDg6Tgcp6nh5chOo8teebMjoOXeU/PVfbPIRL4dymXdX1LuGS8ZpBUUqjDZ0d')
BS(`superhero',	`sha384-88w0u/oucDSTE30ETLLIobzhT+bQ6CSsiqQyLZpwHvve89eqUA9F2Db6ST6jGRLx')
BS(`united',	`sha384-0UBL8wxZ28kqJ8w8N8RUV0odBG5w8D/Y+rb+o7hr2F3dS9twlAE8S7VUtVSRe5cc')
BS(`yeti',	`sha384-yxFy3Tt84CcGRj9UI7RA25hoUMpUPoFzcdPtK3hBdNgEGnh9FdKgMVM+lbAZTKN2')

define(`BOOL',`<meta name="if:$1" content="$2">')

BOOL(`Change title color',	`0')
BOOL(`Change title font',	`0')
BOOL(`Change body font',	`0')
BOOL(`Use portrait',		`0')
BOOL(`Extra nav space',		`0')
BOOL(`Elsewhere nav',		`0')
BOOL(`White buttons',		`0')
BOOL(`Grey buttons',		`1')
BOOL(`Black buttons',		`0')

define(`FONT', `<meta name="font:$1" content="$2">')

FONT(`Title', `{TitleFont}')
FONT(`Body', `Arial, Helvetica, sans-serif')

<meta name="image:Portrait">

define(`TEXT', `<meta name="text:$1">')

TEXT(`Portrait caption')
TEXT(`Copyright name')
TEXT(`Extra nav items')
TEXT(`Elsewhere')
TEXT(`Charahub')
TEXT(`GitHub')

<title>{Title}BLOCK(`PostTitle', ` - {PostTitle}')</title>
BLOCK(`Description', `<meta name="description" content="{MetaDescription}">')
<link rel="shortcut icon" href="{Favicon}">
<link rel="alternate" type="application/rss+xml" href="{RSS}">

define(`STYLE', `<link rel="stylesheet" href="$1" integrity="$2" crossorigin="anonymous">')

STYLE(`https://maxcdn.bootstrapcdn.com/bootswatch/3.3.6/{select:Bootswatch}/bootstrap.min.css', `{select:BSIntegrity}')
STYLE(`https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/4.0.1/ekko-lightbox.min.css',	`sha384-EsoR0pjPTZTUy5b8kJf6aTfA7quYluD5mNQ/Lz4hsxU2kXuuc6PlXVfBJCFdTXqD')
STYLE(`https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css', 		`sha384-T8Gy5hrqNKT+hzMclPo118YTQO6cYprQmhrYwIiQ/3axmI1hQomh7Ud2hPOy8SP1')

<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->

<style type="text/css">
/* Fix for IE10 */
@-webkit-viewport { width: device-width; }
@-moz-viewport { width: device-width; }
@-ms-viewport { width: device-width; }
@-o-viewport { width: device-width; }
@viewport { width: device-width; }

/* Theme CSS */
BLOCK(`IfChangeBodyFont', `body { font-family: {font:Body};} ')
BLOCK(`IfChangeTitleFont', `h1, h2, h3, h4, h5, h6, .h1, .h2, .h3, .h4, .h5, .h6 { font-family: {font:Title}; }')
BLOCK(`ShowHeaderImage', `.header { background-image: url({HeaderImage}); background-size: cover; background-position: center; }')
BLOCK(`IfChangeTitleColor', `.header, .header a:link, .header a:visited, .header a:hover, .header a:active { color: {TitleColor}; }')
BLOCK(`IndexPage', `.panel-body { max-height: 80vh; overflow: auto; }')
BLOCK(`ifGreyButtons', `.buttons a:link, .buttons a:visited, .buttons a:hover, .buttons a:active { color: #cccccc; }')
BLOCK(`ifWhiteButtons', `.buttons a:link, .buttons a:visited, .buttons a:hover, .buttons a:active { color: white; }')
BLOCK(`ifBlackButtons', `.buttons a:link, .buttons a:visited, .buttons a:hover, .buttons a:active { color: black; }')

.photo { margin: auto; }

.post img { width: auto; height: auto; max-width: 100%; max-height: 75vh; }

.post pre { white-space: pre-wrap; }

blockquote { font-size: inherit; }

.Quote blockquote { font-size: 1.5em; font-style: oblique; }

.Quote blockquote footer { font-style: normal; }

.reblog_button { margin-top: 1em; margin-bottom: 6px; }

.buttons { margin-bottom: 3em; }

ol.notes { list-style-type: none; }

li.note, li.note blockquote { margin-top: 0.5em; }

@media (max-width: 991px) {
.reblog_button, .like_button { display: inline-block !important; margin-top: 0; margin-bottom: 0; }
.date { text-align: left; }
.buttons { text-align: right; }
}

/* Custom CSS */
{CustomCSS}
</style>

</head>
<body>

dnl obviously this can't replace divs that have ids
define(`DIV', `<div class="$1">$2</div>')

define(`FA', `<span class="fa fa-$1" aria-hidden="true"></span>')

dnl size for reblog and like buttons
define(`BSIZE', `18')

dnl figuring out how to capitalize white/grey/black (or if we even need to) is more effort than it's worth
define(`BCOLOR', `BLOCK(`if$1Buttons', `{ReblogButton size="BSIZE" color="$2"} {LikeButton size="BSIZE" color="$2"}')')

define(`POST',
` BLOCK(`$1',
  ` ifelse($2,,
    ` BLOCK(`Title', `DIV(`panel-heading',`<h3 class="panel-title">{Title}</h3>')')',
    ` DIV(`panel-heading', `<h3 class="panel-title">$2</h3>')'
    )
    DIV(`panel-body $1',$3)
  ')
')

define(`PHOTO', `<img class="photo" src="{PhotoURL-500}" srcset="{PhotoURL-HighRes} 540w`,' {PhotoURL-500} 500w`,' {PhotoURL-400} 400w`,' {PhotoURL-250} 250w`,' {PhotoURL-100} 100w" alt="{PhotoAlt}">')

define(`PIC',
` POST($1,,
  ` DIV(`text-center', `$2PHOTO$3')
    BLOCK(`Caption', `<br>{Caption}')
  ')
')

define(`CONTENT',
` BLOCK(`Posts',
  ` DIV(`row',
    ` DIV(`col-md-3 text-right date',
      ` BLOCK(`Date',
        ` BLOCK(`NewDayDate',
          ` <h2><a href="{BlogURL}day/{Year}/{MonthNumberWithZero}/{DayOfMonthWithZero}">{Month} {DayOfMonth}{DayOfMonthSuffix}</a><br>
            <small>({TimeAgo})</small></h2>
          ')
        ')
      ')
      DIV(`col-md-8 post',
      ` DIV(`panel panel-default',
        ` PIC(`Photo', `<a href="{PhotoURL-HighRes}" data-toggle="lightbox">', `</a>')
          PIC(`Panorama', `{LinkOpenTag}', `{LinkCloseTag}')
          POST(`Photoset',` {PhotoCount} images', `DIV(`text-center', `BLOCK(`Photos', `<a href="{PhotoURL-HighRes}" data-toggle="lightbox" data-gallery="{PostID}"BLOCK(`Caption',` data-title="{PlaintextCaption}" title="{PlaintextCaption}"')>PHOTO</a><br><br>')')
            BLOCK(`Caption', `{Caption}')
          ')
          POST(`Text',,`{Body}')
          POST(`Quote',,`<blockquote><p>{Quote}</p>BLOCK(`Source',`<footer>{Source}</footer>')</blockquote>')
          POST(`Link',` <a href="{URL}" {Target}><u>BLOCK(`Author', `{Author}: '){Name}</u></a>',
          ` BLOCK(`Excerpt', `<blockquote><p>{Excerpt}</p></blockquote>')
            BLOCK(`Description', `{Description}')
          ')
          POST(`Chat',,`BLOCK(`Lines', `BLOCK(`Label', `<b>{Label}</b>') {Line}<br>')',)
          POST(`Video',,`{Video-500}BLOCK(`Caption',`<p><br>{Caption}</p>')',)
          POST(`Audio',` BLOCK(`Artist', `{Artist}BLOCK(`TrackName', `: ')')BLOCK(`TrackName', `{TrackName}')',
          ` BLOCK(`AudioEmbed', `{AudioEmbed-250}')
            BLOCK(`AudioPlayer', `{AudioPlayer}')
            BLOCK(`Caption', `<p><br>{Caption}</p>')
          ')
          POST(`Answer',,
          ` DIV(`text-right',`{Asker} asked: <blockquote class="blockquote-reverse"><p>{Question}</p></blockquote>')
            BLOCK(`Answerer',`{Answerer} replied: <blockquote>{Answer}</blockquote>')
            {Replies}
          ')
          BLOCK(`Date',
          ` DIV(`panel-footer',
            ` FA(`comments-o') <small><a href="{Permalink}#notes">{NoteCountWithLabel}</a></small>
              BLOCK(`HasTags',`&nbsp;FA(`tags') <small>BLOCK(`Tags', `<a href="{TagURL}">#{Tag}</a> ')</small>')
              BLOCK(`ContentSource',`&nbsp;FA(`external-link') <small><a href="{SourceURL}">{SourceTitle}</a></small>')
            ')
          ')
        ')
        BLOCK(`PostNotes', `<div id="notes">{PostNotes}</div>')
      ')
      DIV(`col-md-1',
      ` BLOCK(`Date',
        ` DIV(`buttons',
          ` BCOLOR(`White',`white')BCOLOR(`Grey',`grey')BCOLOR(`Black',`black')
            BLOCK(`IndexPage', `<a href="{Permalink}"><span class="fa fa-link fa-lg" aria-hidden="true"></span><span class="sr-only">permalink</span></a>$1<br>')
          ')
        ')
      ')
    ')
  ')
')

define(`SIDEBAR',
` BLOCK(`IfPortrait',
  ` DIV(`thumbnail',
    ` <img src="{image:Portrait}" alt="author portrait">
      BLOCK(`IfPortraitCaption', `DIV(`caption', `{text:Portrait Caption}')')
    ')
  ')
  <form action="{BlogURL}search" method="get" role="search">
  DIV(`input-group',
  ` <input type="text" class="form-control" placeholder="Search..." title="Search" name="q" value="{SearchQuery}">
    <span class="input-group-btn"><button class="btn btn-default" type="submit">FA(`search')<span class="sr-only">Submit</span></button></span>
  ')
  </form><br>
  <ul class="nav nav-pills nav-stacked">
  <li><a href="{BlogURL}archive">FA(`calendar') Archive</a></li>
  BLOCK(`AskEnabled', `<li><a href="{BlogURL}ask">FA(`envelope') {AskLabel}</a></li>')
  BLOCK(`SubmissionsEnabled', `<li><a href="{BlogURL}submit">FA(`pencil') {SubmitLabel}</a></li>')
  BLOCK(`ifExtraNavSpace', `</ul><br><ul class="nav nav-pills nav-stacked">')
  BLOCK(`HasPages', `BLOCK(`Pages', `<li><a href="{URL}">FA(`bookmark') {Label}</a></li>')')
  {text:Extra nav items}
  </ul>
  BLOCK(`ifElsewhereNav',
  ` <h2>Elsewhere</h2>
    <ul class="nav nav-pills nav-stacked">
    {text:Elsewhere}
    BLOCK(`IfCharahub', `<li><a href="https://charahub.com/user/{text:Charahub}" target="_blank">FA(`user') Charahub</a></li>')
    BLOCK(`IfGitHub', `<li><a href="https://github.com/{text:GitHub}" target="_blank">FA(`github') GitHub</a></li>')
    </ul>
  ')
')

dnl actual page starts here

DIV(`header jumbotron',
` DIV(`container',
  ` <h1 id="top"><a href="{BlogURL}">{Title}</a></h1>
    BLOCK(`ShowDescription', `<p>{Description}</p>')
  ')
')

DIV(`container-fluid',
` DIV(`row',
  ` DIV(`col-md-9',`CONTENT')
    DIV(`col-md-3',`SIDEBAR')
  ')

  DIV(`row',
  ` BLOCK(`Pagination',
    ` DIV(`col-md-12 text-center',
      ` <nav><ul class="pagination">
        BLOCK(`PreviousPage', `<li><a href="{PreviousPage}" id="prevpage">FA(`arrow-left')<span class="sr-only">previous</span></a></li>')
        {block:JumpPagination length="5"}
          BLOCK(`CurrentPage', `<li class="active"><a href="#">{PageNumber}</a></li>')
          BLOCK(`JumpPage', `<li><a href="{URL}">{PageNumber}</a></li>')
        {/block:JumpPagination}
        BLOCK(`NextPage', `<li><a href="{NextPage}" id="nextpage">FA(`arrow-right')<span class="sr-only">next</span></a></li>')
        </ul></nav>
      ')
    ')
    BLOCK(`DayPagination',
    ` DIV(`col-md-12',
      ` <nav><ul class="pager">
        BLOCK(`PreviousDayPage', `<li><a href="{PreviousDayPage}" id="prevpage">FA(`arrow-left')<span class="sr-only">previous</span></a></li>')
        BLOCK(`NextDayPage', `<li><a href="{NextDayPage}" id="nextpage">FA(`arrow-right')<span class="sr-only">next</span></a></li>')
        </ul></nav>
      ')
    ')
    DIV(`col-md-12 text-right',
    ` <a href="#top" class="btn btn-primary"><span class="fa fa-arrow-up" aria-hidden="true"></span><span class="sr-only">top of page</span></a>
      <a href="{RSS}" class="btn btn-primary"><span class="fa fa-rss" aria-hidden="true"></span><span class="sr-only">RSS</span></a>
      <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#copyrights"><span class="fa fa-copyright" aria-hidden="true"></span><span class="sr-only">copyright information</span></button>
    ')
  ')
')

<div class="modal fade" id="copyrights" tabindex="-1" role="dialog" aria-labelledby="copyrightsLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="copyrightsLabel">Copyrights</h4>
      </div>
      <div class="modal-body">
<b>{Title}</b> &copy; {CopyrightYears} {text:Copyright name}
<hr>
<b>Tumblr theme:</b> <a href="https://github.com/mishalindetak/unbroken">unbroken</a> &copy; 2016 <a href="https://mishalindetak.tumblr.com/">Misha Lindetak</a> under ISC license<br><br>
<small><tt>Permission to use, copy, modify, and/or distribute this software for any
purpose with or without fee is hereby granted, provided that the above
copyright notice and this permission notice appear in all copies.
<br><br>
THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.</tt></small>
<hr>
<b><a href="https://bootswatch.com/{select:Bootswatch}/">Bootswatch theme: {select:Bootswatch}</a></b> &copy; 2013 <a href="http://thomaspark.co/">Thomas Park</a> under MIT license<br>
<b><a href="https://getbootstrap.com/">Bootstrap</a></b> &copy; 2011-2015 Twitter, Inc under MIT license<br>
<b><a href="https://ashleydw.github.io/lightbox/">Lightbox</a></b> &copy; 2011-2015 ashleydw under MIT license<br>
<b><a href="https://www.html5andbeyond.com/tumblr-responsive-videos-jquery/">Responsive videos</a></b> &copy; 2014 S. William Get-Blogging.com under MIT license (all bugs added by Misha Lindetak)<br>
<b><a href="https://github.com/lightbox/jquery-keynav">J/K scrolling</a></b> &copy; 2012 under MIT license<br>
<b>Bootstrap fix for IE10</b> &copy; 2014-2015 Twitter, Inc under MIT license<br><br>
<small><tt>The MIT License (MIT)
<br><br>
Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:
<br><br>
The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.
<br><br>
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.</tt></small>
<hr>
<b>Icons:</b> <a href="http://fontawesome.io/license/">Font Awesome by Dave Gandy - http://fontawesome.io</a>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

define(`SCRIPT', `<script src="$1" integrity="$2" crossorigin="anonymous"></script>')

SCRIPT(`https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js',						`sha384-6ePHh72Rl3hKio4HiJ841psfsRJveeS+aLoaEf3BWfS+gTF0XdAqku2ka8VddikM')
SCRIPT(`https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js',						`sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS')
SCRIPT(`https://cdn.rawgit.com/mishalindetak/unbroken/dfd0a2ca68d147383ebfbc0127b96083718fa491/ie10fix.js',		`sha384-Upxx4F1UKNh6OVGGabosYhbzAN3hDcsETf4eziClbBLJwG+tgzraP7Qe8Se1M6UP')
SCRIPT(`https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/4.0.1/ekko-lightbox.min.js',				`sha384-2aVpK/uKiYlyFXHZ36wvxOPZyWeouEKvbSUlqCrkFhyT80n2aSYtT15Tgdn6g41M')
SCRIPT(`https://cdn.rawgit.com/lightbox/jquery-keynav/b73a9c597315f4cec9b54a0889f3de01c58ee21f/jquery.keynav.js',	`sha384-ppIdM2QljKNY0HjGVJTSOQT5/72E5I67qHym+ZJhhkqX0RZfegzYf5JplBbHGZU+')
SCRIPT(`https://cdn.rawgit.com/mishalindetak/unbroken/aa5459d0ab9286486f6d744f2998b9ce58eee42b/responsive.js',		`sha384-karCNJRpJOxkP1mf19CQEMZ445UWJsdZCh8EfOaC0hAmpXNmu700X85/NcHk+G5w')
SCRIPT(`https://cdn.rawgit.com/mishalindetak/unbroken/ac81b5b2a776b16f292c840668fb79cf090d4f96/unbroken.js',		`sha384-w5UtbJaGJkMrhlynIMUco/utuCzK7znIRqi9gU+noyJbcRdMsD7fMxm/esppPDZj')

</body>
</html>
