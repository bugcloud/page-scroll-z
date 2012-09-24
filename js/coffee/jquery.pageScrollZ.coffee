###
pageScrollZ - jQuery Plugin

About this plugin, visit github project page.
https://github.com/bugcloud/page-scroll-z
###
$ = jQuery

$.fn.pageScrollZ = (opt) ->
  default_options =
    scrollContent: "html, body"
    animation: true
    animationSpeed: 500
    easingFunction: "swing"

  options = $.extend {}, default_options, opt
  obj = {}
  $_that = $(this)
  $_scroll = $(options.scrollContent)
  obj.animation = options.animation

  $_that.off('click').on 'click', (e) ->
    e.stopPropagation()
    e.preventDefault()
    $target = $("#{$(this).attr('href')}")
    targetOffsetTop = 0
    $target.offset().top if $target and $target.offset()
    duration = if obj.animation then options.animationSpeed else 0
    $_scroll.stop(false, false)
    props =
      scrollTop: "#{targetOffsetTop}px"
    $_scroll.animate props, duration, options.easingFunction

  this.switchAnimation = (b) ->
    obj.animation = b

  return this
