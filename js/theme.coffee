---
---

$ ->

	offsetTop = 54

	# dynamic copyright year
	$("#copyYear").text (new Date).getFullYear()

	# main jumbo height of window
	resizeMainJumbo = ->
		$('.full-height').each ->
			$(this).css 'min-height', (window.innerHeight - offsetTop) + 'px'
			return
		$('.container').each ->
			$(this).css 'min-width', (window.innerWidth) + 'px'
			return
		return
	resizeMainJumbo()
	$(window).resize () ->
		resizeMainJumbo()

	# scroll tos
	$('.to-top').click ->
		event.preventDefault()
		$('#bs-example-navbar-collapse-1').collapse('hide')
		$('html, body').animate { scrollTop: $('body').offset().top - 74 }, 1000
		return

	$('.to-wwa').click ->
		event.preventDefault()
		$('#bs-example-navbar-collapse-1').collapse('hide')
		$('html, body').animate { scrollTop: $('#whereWeAre').offset().top - offsetTop }, 1000
		return

	$('.to-paths').click ->
		event.preventDefault()
		$('#bs-example-navbar-collapse-1').collapse('hide')
		$('html, body').animate { scrollTop: $('#paths').offset().top - offsetTop }, 1000
		return

	$('.to-qa').click ->
		event.preventDefault()
		$('#bs-example-navbar-collapse-1').collapse('hide')
		$('html, body').animate { scrollTop: $('#questions').offset().top - offsetTop }, 1000
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
		$(".jumbo-parallax").parallax speed: 0.2
