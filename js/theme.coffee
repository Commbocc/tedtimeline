---
---

$ ->


	$('.to-carousel').click ->
		$('#bs-example-navbar-collapse-1').collapse('hide')
		$('html, body').animate { scrollTop: $('#infoJumbo').offset().top - 54 }, 1000
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


	# get started modal functions
	# $(window).load ->
	# 	$("#getStartedModal").modal "show"
	# 	return

	hideServiceSections = ->
		$('.service-section').hide()

	reenableHostingRadios = (web) ->
		$('#hostingRadioOptions input').each ->
			$(this).attr('disabled', false)
			$(this).prop('checked', false)
		if web is 'jekyll'
			$('#hostingRadioOptions input').each ->
				$(this).attr('disabled', true)
		if web is 'rails'
			$('input#shared').attr('disabled', true)
			$('input#dedicated').attr('disabled', true)
			$('input#vps').prop('checked', true)

	selectWebService = (web) ->
		$('#webServiceSelect').val(web)
		reenableHostingRadios(web)

	$('[data-target="#getStartedModal"]').click ->
		hideServiceSections()
		service = $(this).data('service')
		web = $(this).data('ref')
		$('#'+service+'.service-section').show()
		selectWebService(web)
		# alert service

	$('#webServices').on 'change', '#webServiceSelect', (e) ->
		web = $(this).val()
		reenableHostingRadios(web)

	# contact form; is human?
	# $("#isHuman").change ->
	# 	if @checked
	# 		$("#contactSubmit").removeClass "disabled"
	# 	else
	# 		$("#contactSubmit").addClass "disabled"
	# 	return

	# $("#contactReset").click ->
	# 	$("#contactSubmit").addClass "disabled"
	# 	return

	# sticky footer
	docHeight = $(window).height()
	footerHeight = $("#page-footer").height()
	footerTop = $("#page-footer").position().top + footerHeight
	$("#page-footer").css "margin-top", (docHeight - footerTop) + "px"  if footerTop < docHeight
