<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
dnl Bootstrap documentation says the above three meta tags MUST be before anything else. Tumblr messes that up but it doesn't seem to be a problem.

define(`BS',
`<meta name="select:Bootswatch" content="$1" title="$1">
<meta name="select:BSIntegrity" content="$2" title="$1">')

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

BOOL(`Change title color', `0')
BOOL(`Change title font', `0')
BOOL(`Change body font', `0')
BOOL(`Move controls to bottom', `0')
BOOL(`Use navbar', `0')
BOOL(`Use sidebar', `1')
BOOL(`Use portrait', `0')
BOOL(`Use portrait caption', `0')
BOOL(`White buttons', `0')
BOOL(`Grey buttons', `1')
BOOL(`Black buttons', `0')

<meta name="select:Navbar" content="default" title="Default">
<meta name="select:Navbar" content="inverse" title="Alternative">

define(`FONT', `<meta name="font:$1" content="$2">')

FONT(`Title', `{TitleFont}')
FONT(`Body', `Arial, Helvetica, sans-serif')

<meta name="image:Portrait">

<meta name="text:Portrait caption">
<meta name="text:Extra nav items">

<title>{Title}{block:PostTitle} - {PostTitle}{/block:PostTitle}</title>
{block:Description}<meta name="description" content="{MetaDescription}">{/block:Description}
<link rel="shortcut icon" href="{Favicon}">
<link rel="alternate" type="application/rss+xml" href="{RSS}">

<link href="https://maxcdn.bootstrapcdn.com/bootswatch/3.3.6/{select:Bootswatch}/bootstrap.min.css" integrity="{select:BSIntegrity}" rel="stylesheet" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/4.0.1/ekko-lightbox.min.css" integrity="sha384-EsoR0pjPTZTUy5b8kJf6aTfA7quYluD5mNQ/Lz4hsxU2kXuuc6PlXVfBJCFdTXqD" crossorigin="anonymous">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-T8Gy5hrqNKT+hzMclPo118YTQO6cYprQmhrYwIiQ/3axmI1hQomh7Ud2hPOy8SP1" crossorigin="anonymous">
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
{block:IfChangeBodyFont}font-family: {font:Body};{/block:IfChangeBodyFont}
{block:IfNotUseNavbar}
{block:HideTitle}padding-top: 2em;{/block:HideTitle}
{block:ShowTitle}{block:PermalinkPage}padding-top: 2em;{/block:PermalinkPage}{/block:ShowTitle}
{/block:IfNotUseNavbar}
}
{block:IfChangeTitleFont}
h1, h2, h3, h4, h5, h6, .h1, .h2, .h3, .h4, .h5, .h6 { font-family: {font:Title}; }
{/block:IfChangeTitleFont}
{block:IfMoveControlsToBottom}
#tumblr_controls, .tmblr-iframe.tmblr-iframe--desktop-logged-in-controls.iframe-controls--desktop, .tmblr-iframe.tmblr-iframe--controls.iframe-controls--desktop {
top: auto;
bottom: 0;
}
{/block:IfMoveControlsToBottom}
{block:ShowTitle}
#header {
{block:ShowHeaderImage}background-image: url("{HeaderImage}");{/block:ShowHeaderImage}
{block:IfChangeTitleColor}color: {TitleColor};{/block:IfChangeTitleColor}
}
{/block:ShowTitle}
.post .img-responsive { margin: 0 auto; }
.reblog_button, .like_button { display: inline-block !important; }
.metainfo { margin-bottom: 3em; }
#vnav { margin-bottom: 1.5em; }
@media (max-width: 991px) {
#searchpager { display: none; }
}
{CustomCSS}
</style>
</head>
<body>

define(`NAVITEMS',
`{block:HasPages}{block:Pages}<li><a href="{URL}"><span class="fa fa-bookmark" aria-hidden="true"></span> {Label}</a></li>{/block:Pages}{/block:HasPages}
{block:SubmissionsEnabled}<li><a href="{BlogURL}submit"><span class="fa fa-cloud-upload" aria-hidden="true"></span> {SubmitLabel}</a></li>{/block:SubmissionsEnabled}
{block:AskEnabled}<li><a href="{BlogURL}ask"><span class="fa fa-envelope" aria-hidden="true"></span> {AskLabel}</a></li>{/block:AskEnabled}
{text:Extra nav items}
<li><a href="{RSS}"><span class="fa fa-rss" aria-hidden="true"></span> RSS</a></li>
')

{block:IfUseNavbar}
<nav class="navbar navbar-{select:Navbar} navbar-static-top">
<div class="container-fluid">
<div class="navbar-header">
<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#thenavbar" aria-expanded="false">
<span class="sr-only">Toggle navigation</span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
</button>
<a class="navbar-brand" href="{BlogURL}">{Title}</a>
</div>
<div class="collapse navbar-collapse" id="thenavbar">
<ul class="nav navbar-nav">
NAVITEMS
</ul>
<form class="navbar-form navbar-right" role="search" action="{BlogURL}search" method="get">
<div class="form-group">
<input type="text" class="form-control" placeholder="Search" title="Search" name="q" value="{SearchQuery}">
</div>
<button type="submit" class="btn btn-default">Go!</button>
</form>
</div>
</div>
</nav>
{/block:IfUseNavbar}

{block:IndexPage}
{block:ShowTitle}
<div id="header" class="jumbotron">
<div class="container">
<h1>{Title}</h1>
{block:ShowDescription}
<p>{Description}</p>
{/block:ShowDescription}
</div>
</div>
{/block:ShowTitle}
{/block:IndexPage}

<div class="container-fluid">
{block:IfUseSidebar}<div class="row"><div class="col-md-10">{/block:IfUseSidebar}

{block:Posts}

define(`DATE',
`<div class="col-md-2 text-right">
{block:Date}{block:NewDayDate}
<h2><a href="{BlogURL}day/{Year}/{MonthNumberWithZero}/{DayOfMonthWithZero}">{Month} {DayOfMonth}{DayOfMonthSuffix}</a><br>
<small>({TimeAgo})</small></h2>
{/block:NewDayDate}{/block:Date}
</div>
')

define(`BSIZE', `14')

dnl figuring out how to capitalize (or if we even need to) is more effort than it's worth
define(`BCOLOR',
`{block:if$1Buttons}
{LikeButton size="BSIZE" color="$2"}
{ReblogButton size="BSIZE" color="$2"}
{/block:if$1Buttons}')

define(`BUTTONS',
`<div class="col-md-2">
{block:Date}
<div class="metainfo">
BCOLOR(`White',`white')
BCOLOR(`Grey',`grey')
BCOLOR(`Black',`black')
<a href="{Permalink}"><span class="fa fa-link" aria-hidden="true"></span><span class="sr-only">permalink</span></a>
$1<br>
{block:NoteCount}
<a href="{Permalink}#notes"><span class="fa fa-comments-o" aria-hidden="true"></span> {NoteCountWithLabel}</a><br>
{/block:NoteCount}
{block:HasTags}
<span class="fa fa-tags" aria-hidden="true">
<small>{block:Tags}<a href="{TagURL}">#{Tag}</a> {/block:Tags}</small>
{/block:HasTags}
</div>
{/block:Date}
</div>')

define(`TITLE',
`ifelse($1,,
`{block:Title}<div class="panel-heading"><h3 class="panel-title">{Title}</h3></div>{/block:Title}',
`<div class="panel-heading"><h3 class="panel-title">$1</h3></div>')')

define(`POST',
`{block:$1}
<div class="row">
DATE
<div class="col-md-8 post">
<div class="panel panel-default">
TITLE($2)
<div class="panel-body">
$3
</div>
</div>
{block:PostNotes}<div id="notes">{PostNotes}</div>{/block:PostNotes}
</div>
BUTTONS($4)
</div>
{/block:$1}')

define(`PIC',
`POST($1,
,
`$2<img class="img-responsive" src="{PhotoURL-500}" alt="{PhotoAlt}" width="{PhotoWidth-500}" height="{PhotoHeight-500}">$3
{block:Caption}<div class="text-center"><br>{Caption}</div>{/block:Caption}',
`<a href="{PhotoUrl-HighRes}"><span class="fa fa-save" aria-hidden="true"></span><span class="sr-only">save</span></a>')')

PIC(Photo,
`<a href="{PhotoURL-HighRes}" data-toggle="lightbox">',
`</a>')

PIC(Panorama,
`{LinkOpenTag}',
`{LinkCloseTag}')

POST(Photoset,
`{PhotoCount} Photos',
`{block:Photos}
<div class="col-md-6">
<a  href="{PhotoURL-HighRes}" data-toggle="lightbox" data-gallery="{PostID}"{block:Caption} data-title="{PlaintextCaption}" title="{PlaintextCaption}"{/block:Caption}><img class="img-responsive" src="{PhotoURL-500}" alt="{PhotoAlt}" width="{PhotoWidth-500}" height="{PhotoHeight-500}"></a>
</div>
{/block:Photos}
{block:Caption}<div class="col-md-12 text-center"><p>{Caption}</p></div>{/block:Caption}',
)

POST(Text,
,
`{Body}',
)

POST(Quote,
,
`<blockquote>
<p>{Quote}</p>
{block:Source}<footer>{Source}</footer>{/block:Source}
</blockquote>',
)

POST(Link,
`<a href="{URL}" {Target}>{block:Author}{Author}: {/block:Author}{Name}</a>',
`{block:Thumbnail}<img class="img-responsive" src="{Thumbnail}">{/block:Thumbnail}
{block:Excerpt}
<blockquote>
<p>{Excerpt}</p>
</blockquote>
{/block:Excerpt}
{block:Description}{Description}{/block:Description}',
)

POST(Chat,
,
`{block:Lines}
{block:Label}<b>{Label}</b>{/block:Label} {Line}<br>
{/block:Lines}',
)

POST(Video,
,
`<div class="text-center">
{Video-500}
{block:Caption}<p><br>{Caption}</p>{/block:Caption}
</div>',
)

POST(Audio,
`{block:Artist}{Artist}{block:TrackName}: {/block:TrackName}{/block:Artist}{block:TrackName}{TrackName}{/block:TrackName}',
`<div class="text-center">
{block:AlbumArt}<img class="img-responsive" src="{AlbumArtURL}">{/block:AlbumArt}
{block:AudioEmbed}{AudioEmbed-500}{/block:AudioEmbed}
{block:AudioPlayer}{AudioPlayer}{/block:AudioPlayer}
{block:Caption}<p><br>{Caption}</p>{/block:Caption}
</div>',
`{block:ExternalAudio}<a href="{ExternalAudioURL}"><span class="fa fa-save" aria-hidden="true"></span><span class="sr-only">save</span></a>{/block:ExternalAudio}')

POST(Answer,
,
{block:Answerer}<div class="text-right">{/block:Answerer}
`{Asker} asked:
<blockquote{block:Answerer} class="blockquote-reverse"{/block:Answerer}>
<p>{Question}</p>
</blockquote>
{block:Answerer}
</div>
{Answerer} replied:
<blockquote>
{Answer}
</blockquote>
{/block:Answerer}
{Replies}')

{/block:Posts}

{block:ifUseSidebar}
</div>

<div class="col-md-2">

{block:ifUsePortrait}
<div class="thumbnail">
<img src="{image:Portrait}" alt="author portrait">
{block:ifUsePortraitCaption}
<div class="caption">
<p>{text:Portrait Caption}</p>
{block:HideTitle}{block:ShowDescription}<p>{Description}</p>{/block:ShowDescription}{/block:HideTitle}
</div>
{/block:ifUsePortraitCaption}
</div>
{/block:ifUsePortrait}

{block:IfNotUseNavbar}
<ul class="nav nav-pills nav-stacked" id="vnav">
<li><a href="{BlogURL}"><span class="fa fa-home" aria-hidden="true"></span> Home</a></li>
NAVITEMS
</ul>

<div class="panel panel-default">
<div class="panel-body">
<form action="{BlogURL}search" method="get" role="search">
<div class="input-group">
<input type="text" class="form-control" placeholder="Search..." title="Search" name="q" value="{SearchQuery}">
<span class="input-group-btn">
<button class="btn btn-default" type="submit">Go!</button>
</span>
</div>
</form>
<div id="searchpager">
<nav>
<ul class="pager">
{block:PreviousPage}<li><a href="{PreviousPage}">Previous</a></li>{/block:PreviousPage}
{block:NextPage}<li><a href="{NextPage}">Next</a></li>{/block:NextPage}
</ul>
</nav>
<p class="text-center">Page {CurrentPage} of {TotalPages}</p>
</div>
</div>
</div>
{/block:IfNotUseNavbar}

</div>
</div>
{/block:ifUseSidebar}

<div class="row">
<div class="col-md-12">
<nav>
<ul class="pager">
{block:PreviousPage}<li><a href="{PreviousPage}">Previous</a></li>{/block:PreviousPage}
{block:NextPage}<li><a href="{NextPage}">Next</a></li>{/block:NextPage}
</ul>
</nav>
</div>
<div class="col-md-4 col-xs-4">&copy; {CopyrightYears} {Title}</div>
<div class="col-md-4 col-xs-4"><p class="text-center">Page {CurrentPage} of {TotalPages}</p></div>
<div class="col-md-4 col-xs-4"><p class="text-right">Theme: <a href="https://github.com/mishalindetak/unbroken">Unbroken</a>, by <a href="https://mishalindetak.tumblr.com/">Misha Lindetak</a></p></div>
</div>
</div>
</div>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js" integrity="sha384-6ePHh72Rl3hKio4HiJ841psfsRJveeS+aLoaEf3BWfS+gTF0XdAqku2ka8VddikM" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/4.0.1/ekko-lightbox.min.js" integrity="sha384-2aVpK/uKiYlyFXHZ36wvxOPZyWeouEKvbSUlqCrkFhyT80n2aSYtT15Tgdn6g41M" crossorigin="anonymous"></script>
<script type="text/javascript">
// Enable lightbox
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
