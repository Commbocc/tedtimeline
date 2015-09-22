---
---

$ ->

	offsetTop = 54

	# dynamic copyright year
	$("#copyYear").text (new Date).getFullYear()

	# main jumbo height of window
	resizeJumbo = ->
		winHeight = (window.innerHeight - offsetTop)

		$('.height-full').each ->
			$(this).css 'min-height', winHeight + 'px'
			return

		$('.height-half').each ->
			$(this).css 'min-height', (winHeight * 0.5) + 'px'
			return

		$('.height > .container').each ->
			$(this).css
				'position': 'absolute'
				'margin-top': $(this).outerHeight() / -2
			return

		return

	$(window).resize ->
		resizeJumbo()
	resizeJumbo()

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

	$('.to-faqs').click ->
		event.preventDefault()
		$('#bs-example-navbar-collapse-1').collapse('hide')
		$('html, body').animate { scrollTop: $('#faqs').offset().top - offsetTop }, 1000
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
