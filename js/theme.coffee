---
---

$ ->

	$('.timeline > li').each (index, value) ->

		if $(window).width() >= 992

			unless $(this).hasClass('date-stamp')

				prevSibHeight = $(this).prev().height()

				# percent = 0.7
				# newMargin = if (prevSibHeight * percent) <= 150 then (prevSibHeight * 0.3) else (prevSibHeight * percent)
				# newMargin = 100

				$(this).css
					marginTop: '-' + (prevSibHeight * 0.45) + 'px'