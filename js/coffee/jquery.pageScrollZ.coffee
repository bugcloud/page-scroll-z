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
    fixTop: "0"

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
    if $target and $target.offset()
      targetOffsetTop = $target.offset().top
      fix = 0
      if options.fixTop
        fix = parseInt(options.fixTop)
      targetOffsetTop = targetOffsetTop + fix unless fix is 0
      console.log targetOffsetTop
    duration = if obj.animation then options.animationSpeed else 0
    $_scroll.stop(false, false)
    props =
      scrollTop: "#{targetOffsetTop}px"
    $_scroll.animate props, duration, options.easingFunction

  this.switchAnimation = (b) ->
    obj.animation = b

  return this
