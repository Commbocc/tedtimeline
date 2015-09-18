---
---

$ ->

	$("#copyYear").text (new Date).getFullYear()


	$('.to-carousel').click ->
		$('#bs-example-navbar-collapse-1').collapse('hide')
		$('html, body').animate { scrollTop: $('#infoJumbo').offset().top - 54 }, 1000
		return

	$('.to-paths').click ->
		event.preventDefault()
		$('#bs-example-navbar-collapse-1').collapse('hide')
		$('html, body').animate { scrollTop: $('#paths').offset().top - 54 }, 1000
		return

	$('.to-top').click ->
		event.preventDefault()
		$('#bs-example-navbar-collapse-1').collapse('hide')
		$('html, body').animate { scrollTop: $('body').offset().top - 74 }, 1000
		return

	$('.to-qa').click ->
		event.preventDefault()
		$('#bs-example-navbar-collapse-1').collapse('hide')
		$('html, body').animate { scrollTop: $('#questions').offset().top - 54 }, 1000
		return


	# parallax
	if $(window).width() >= 992
		$.fn.parallax = (options) ->
			windowHeight = $(window).height()
			settings = $.extend(
				speed: 0.15
			, options)
			@each ->
				$this = $(this)
				$(document).scroll ->
					scrollTop = $(window).scrollTop()
					offset = $this.offset().top
					height = $this.outerHeight()
					return  if offset + height <= scrollTop or offset >= scrollTop + windowHeight
					yBgPosition = Math.round((offset - scrollTop) * settings.speed) - 148
					$this.css "background-position", "center " + yBgPosition + "px"
					return
				return
		# $(".bg-1, .bg-2, .bg-3").parallax speed: 0.2
		$(".jumbo-parallax").parallax speed: 0.2
