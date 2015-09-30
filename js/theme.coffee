---
---

$ ->

	# tooltips
	$('[data-toggle="tooltip"]').tooltip()
	$('[data-toggle="popover"]').popover
		trigger: 'hover'

	# destroy remote modals after hidden for refresh
	$('body').on 'hidden.bs.modal', '#defaultModal', ->
		$(this).removeData 'bs.modal'
		return

	# scroll tos
	$('.to-top').click ->
		event.preventDefault()
		$('#bs-example-navbar-collapse-1').collapse('hide')
		$('html, body').animate { scrollTop: $('body').offset().top - 74 }, 1000
		return
	
	$('.to-year').click ->
		event.preventDefault()
		$('#bs-example-navbar-collapse-1').collapse('hide')
		$('html, body').animate { scrollTop: $('#year'+$(this).data('year')).offset().top - 74 }, 1000
		return

	# cumulativeHeight = 0
	$('.timeline > li').each (index, value) ->
		if $(window).width() >= 992
			unless $(this).hasClass('date-stamp')
				prevSibHeight = $(this).prev().height()
				# cumulativeHeight += prevSibHeight * 0.40
				# percent = 0.7
				# newMargin = if (prevSibHeight * percent) <= 150 then (prevSibHeight * 0.3) else (prevSibHeight * percent)
				# newMargin = 100
				# $(this).css
				# 	marginTop: '-' + (prevSibHeight * 0.40) + 'px'