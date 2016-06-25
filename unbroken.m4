define(`BLOCK', `{block:$1}$2{/block:$1}')

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
dnl Bootstrap documentation says the above three meta tags MUST be before anything else. Tumblr messes that up but it doesn't seem to be a problem.

define(`SELECT', `<meta name="select:$1" content="$2" title="$3">')

SELECT(`Navbar', `default', `Default')
SELECT(`Navbar', `inverse', `Alternative')

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
BOOL(`Move controls to bottom',	`0')
BOOL(`Use navbar',		`0')
BOOL(`Use sidebar',		`1')
BOOL(`Use portrait',		`0')
BOOL(`Use portrait caption',	`0')
BOOL(`White buttons',		`0')
BOOL(`Grey buttons',		`1')
BOOL(`Black buttons',		`0')
BOOL(`Full Size Images',	`0')

define(`FONT', `<meta name="font:$1" content="$2">')

FONT(`Title', `{TitleFont}')
FONT(`Body', `Arial, Helvetica, sans-serif')

<meta name="image:Portrait">

<meta name="text:Portrait caption">
<meta name="text:Extra nav items">

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
dnl Fix for IE10
@-webkit-viewport { width: device-width; }
@-moz-viewport { width: device-width; }
@-ms-viewport { width: device-width; }
@-o-viewport { width: device-width; }
@viewport { width: device-width; }

body {
BLOCK(`IfChangeBodyFont', `font-family: {font:Body};')
BLOCK(`IfNotUseNavbar',
` BLOCK(`HideTitle', `padding-top: 2em;')
  BLOCK(`ShowTitle', `BLOCK(`PermalinkPage', `padding-top: 2em;')')
')
}

BLOCK(`IfChangeTitleFont', `h1, h2, h3, h4, h5, h6, .h1, .h2, .h3, .h4, .h5, .h6 { font-family: {font:Title}; }')

BLOCK(`IfMoveControlsToBottom', `#tumblr_controls, .tmblr-iframe.tmblr-iframe--desktop-logged-in-controls.iframe-controls--desktop, .tmblr-iframe.tmblr-iframe--controls.iframe-controls--desktop { top: auto; bottom: 0; }')

BLOCK(`ShowTitle',
` .header {
  BLOCK(`ShowHeaderImage', `background-image: url("{HeaderImage}");')
  BLOCK(`IfChangeTitleColor', `color: {TitleColor};')
  }
')

.post .img-responsive { margin: 0 auto; }

.reblog_button { margin-top: 1em; margin-bottom: 6px; }

.metainfo { margin-bottom: 3em; }

#vnav { margin-bottom: 1.5em; }

@media (max-width: 991px) {
.searchpager { display: none; }
.reblog_button, .like_button { display: inline-block !important; margin-top: 0; margin-bottom: 0; }
.date { text-align: left; }
}
{CustomCSS}
</style>

</head>
<body>

dnl obviously this can't replace divs that have ids
define(`DIV', `<div class="$1">$2</div>')

define(`FA', `<span class="fa fa-$1" aria-hidden="true"></span>')

define(`NAVITEMS',
` <li><a href="{BlogURL}archive">FA(`calendar') Archive</a></li>
  BLOCK(`HasPages', `BLOCK(`Pages', `<li><a href="{URL}">FA(`bookmark') {Label}</a></li>')')
  {text:Extra nav items}
  BLOCK(`SubmissionsEnabled', `<li><a href="{BlogURL}submit">FA(`pencil') {SubmitLabel}</a></li>')
  BLOCK(`AskEnabled', `<li><a href="{BlogURL}ask">FA(`envelope') {AskLabel}</a></li>')
  <li><a href="{RSS}">FA(`rss') RSS</a></li>
')

BLOCK(`IfUseNavbar',
` <nav class="navbar navbar-{select:Navbar} navbar-static-top">
  DIV(`container-fluid',
  ` DIV(`navbar-header',
    ` <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#thenavbar" aria-expanded="false">
      <span class="sr-only">Toggle navigation</span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="{BlogURL}">{Title}</a>
    ')
    <div class="collapse navbar-collapse" id="thenavbar">
      <ul class="nav navbar-nav">
      NAVITEMS
      </ul>
      <form class="navbar-form navbar-right" role="search" action="{BlogURL}search" method="get">
      DIV(`form-group', `<input type="text" class="form-control" placeholder="Search" title="Search" name="q" value="{SearchQuery}">')
      <button type="submit" class="btn btn-default">FA(`search')<span class="sr-only">Submit</span></button>
      </form>
    </div>
  ')
  </nav>
')

define(`JUMBOTRON',
` BLOCK(`IndexPage',
  ` BLOCK(`ShowTitle',
    ` DIV(`header jumbotron',
      ` DIV(`container',
        ` <h1><a href="{BlogURL}">{Title}</a></h1>
          BLOCK(`ShowDescription', `<p>{Description}</p>')
        ')
      ')
    ')
  ')
')

define(`DATE',
` DIV(`col-md-3 text-right date',
  ` BLOCK(`Date',
    ` BLOCK(`NewDayDate',
      ` <h2><a href="{BlogURL}day/{Year}/{MonthNumberWithZero}/{DayOfMonthWithZero}">{Month} {DayOfMonth}{DayOfMonthSuffix}</a><br>
        <small>({TimeAgo})</small></h2>
      ')
    ')
  ')
')

define(`BSIZE', `14')

dnl figuring out how to capitalize (or if we even need to) is more effort than it's worth
define(`BCOLOR', `BLOCK(`if$1Buttons', `{ReblogButton size="BSIZE" color="$2"} {LikeButton size="BSIZE" color="$2"}')')

define(`TITLE',
` ifelse($1,,
  ` BLOCK(`Title', `DIV(`panel-heading',`<h3 class="panel-title">{Title}</h3>')')',
  ` DIV(`panel-heading', `<h3 class="panel-title">$1</h3>')'
  )
')

define(`POST',`BLOCK(`$1',`TITLE($2)DIV(`panel-body',$3)')')

define(`PIC',
` POST($1,,
  ` $2BLOCK(`ifNotFullSizeImages',`<img class="img-responsive" src="{PhotoURL-500}" alt="{PhotoAlt}" width="{PhotoWidth-500}" height="{PhotoHeight-500}">')BLOCK(`ifFullSizeImages',`<img class="img-responsive" src="{PhotoURL-HighRes}" alt="{PhotoAlt}" width="{PhotoWidth-HighRes}" height="{PhotoHeight-HighRes}">')$3
    BLOCK(`Caption', `DIV(`text-center', `<br>{Caption}')')',
  ` <a href="{PhotoUrl-HighRes}">FA(`save')<span class="sr-only">save</span></a>
  ')
')

define(`CONTENT',
` BLOCK(`Posts',
  ` DIV(`row',
    ` DATE
      DIV(`col-md-8 post',
      ` DIV(`panel panel-default',
        ` PIC(`Photo', `<a href="{PhotoURL-HighRes}" data-toggle="lightbox">', `</a>')
          PIC(`Panorama', `{LinkOpenTag}', `{LinkCloseTag}')
          POST(`Photoset',` {PhotoCount} Photos',
          ` BLOCK(`Photos',
            ` DIV(`col-md-6',
              ` <a  href="{PhotoURL-HighRes}" data-toggle="lightbox" data-gallery="{PostID}"BLOCK(`Caption',` data-title="{PlaintextCaption}" title="{PlaintextCaption}"')><img class="img-responsive" src="{PhotoURL-500}" alt="{PhotoAlt}" width="{PhotoWidth-500}" height="{PhotoHeight-500}"></a>
              ')
            ')
            BLOCK(`Caption', `DIV(`col-md-12 text-center',`<p>{Caption}</p>')')
          ')
          POST(`Text',,`{Body}')
          POST(`Quote',,`<blockquote><p>{Quote}</p>BLOCK(`Source',`<footer>{Source}</footer>')</blockquote>')
          POST(`Link',` <a href="{URL}" {Target}><u>BLOCK(`Author', `{Author}: '){Name}</u></a>',
          ` BLOCK(`Thumbnail', `<img class="img-responsive" src="{Thumbnail}">')
            BLOCK(`Excerpt', `<blockquote><p>{Excerpt}</p></blockquote>')
            BLOCK(`Description', `{Description}')
          ')
          POST(`Chat',,`BLOCK(`Lines', `BLOCK(`Label', `<b>{Label}</b>') {Line}<br>')',)
          POST(`Video',,`DIV(`text-center',`{Video-500}BLOCK(`Caption',`<p><br>{Caption}</p>')')',)
          POST(`Audio',` BLOCK(`Artist', `{Artist}BLOCK(`TrackName', `: ')')BLOCK(`TrackName', `{TrackName}')',
          ` DIV(`text-center',
            ` BLOCK(`AlbumArt', `<img class="img-responsive" src="{AlbumArtURL}">')
              BLOCK(`AudioEmbed', `{AudioEmbed-500}')
              BLOCK(`AudioPlayer', `{AudioPlayer}')
              BLOCK(`Caption', `<p><br>{Caption}</p>')
            ')
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
        ` DIV(`metainfo',
          ` BCOLOR(`White',`white')BCOLOR(`Grey',`grey')BCOLOR(`Black',`black')
            <a href="{Permalink}">FA(`link')<span class="sr-only">permalink</span></a>$1<br>
          ')
        ')
      ')
    ')
  ')
')

define(`PORTRAIT',
` BLOCK(`ifUsePortrait',
  ` DIV(`thumbnail',
    ` <img src="{image:Portrait}" alt="author portrait">
      BLOCK(`ifUsePortraitCaption',
      ` DIV(`caption',
        ` {text:Portrait Caption}
          BLOCK(`HideTitle', `BLOCK(`ShowDescription',`<br><br>{Description}')')
        ')
      ')
    ')
  ')
')

define(`SIDENAV',
` BLOCK(`IfNotUseNavbar',
  `
    <ul class="nav nav-pills nav-stacked" id="vnav">
    <li><a href="{BlogURL}">FA(`home') Home</a></li>
    NAVITEMS
    </ul>

    DIV(`panel panel-default',
    ` DIV(`panel-body',
      ` <form action="{BlogURL}search" method="get" role="search">
        DIV(`input-group',
        ` <input type="text" class="form-control" placeholder="Search..." title="Search" name="q" value="{SearchQuery}">
          <span class="input-group-btn"><button class="btn btn-default" type="submit">FA(`search')<span class="sr-only">Submit</span></button></span>
        ')
        </form>
        DIV(`searchpager',
        ` <nav><ul class="pager">
          BLOCK(`PreviousPage',`<li><a href="{PreviousPage}">Previous</a></li>')
          BLOCK(`NextPage',`<li><a href="{NextPage}">Next</a></li>')
          </ul></nav>
          <p class="text-center">Page {CurrentPage} of {TotalPages}</p>
        ')
      ')
    ')
  ')
')

dnl actual page starts here

JUMBOTRON

DIV(`container-fluid',
` BLOCK(`IfUseSidebar', `<div class="row"><div class="col-md-9">')

  CONTENT

  BLOCK(`ifUseSidebar',
  `
    </div><div class="col-md-3">

    PORTRAIT

    SIDENAV

    </div></div>
  ')

  DIV(`row',
  ` DIV(`col-md-12',
    ` <nav><ul class="pager">
      BLOCK(`PreviousPage',`<li><a href="{PreviousPage}">Previous</a></li>')
      BLOCK(`NextPage',`<li><a href="{NextPage}">Next</a></li>')
      </ul></nav>
    ')
    DIV(`col-md-4 col-xs-4',`&copy; {CopyrightYears} {Title}')
    DIV(`col-md-4 col-xs-4',`<p class="text-center">Page {CurrentPage} of {TotalPages}</p>')
    DIV(`col-md-4 col-xs-4',
    ` <p class="text-right">
      Bootswatch theme: <a href="https://bootswatch.com/{select:Bootswatch}/">{select:Bootswatch}</a>, by <a href="http://thomaspark.co/">Thomas Park</a><br>
      Tumblr theme: <a href="https://github.com/mishalindetak/unbroken">unbroken</a>, by <a href="https://mishalindetak.tumblr.com/">Misha Lindetak</a>
      </p>
    ')
  ')

')

define(`SCRIPT', `<script src="$1" integrity="$2" crossorigin="anonymous"></script>')

SCRIPT(`https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js',			`sha384-6ePHh72Rl3hKio4HiJ841psfsRJveeS+aLoaEf3BWfS+gTF0XdAqku2ka8VddikM')
SCRIPT(`https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js',			`sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS')
SCRIPT(`https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/4.0.1/ekko-lightbox.min.js',	`sha384-2aVpK/uKiYlyFXHZ36wvxOPZyWeouEKvbSUlqCrkFhyT80n2aSYtT15Tgdn6g41M')

<script type="text/javascript">
dnl Enable lightbox
$(document).delegate('*[data-toggle="lightbox"]', 'click', function(event) {
    event.preventDefault();
    $(this).ekkoLightbox();
});

// Fix for IE10
// Copyright 2014-2015 Twitter, Inc.
// Licensed under MIT (https://github.com/twbs/bootstrap/blob/master/LICENSE)
if (navigator.userAgent.match(/IEMobile\/10\.0/)) {
  var msViewportStyle = document.createElement('style')
  msViewportStyle.appendChild(
    document.createTextNode(
      '@-ms-viewport{width:auto!important}'
    )
  )
  document.querySelector('head').appendChild(msViewportStyle)
}
</script>

</body>
</html>
