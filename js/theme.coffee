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