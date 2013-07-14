# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/


$(document).on "click", ".submit-modal", (e) ->
  e.preventDefault()	
  $.post $(".form-modal").attr("action"), $(".form-modal").serialize() , (result) ->
  	$('#new-sponsor').modal('hide')
  	$(".alert span").html result.notice
  	$(".alert").alert()
  	$("#sponsors").trigger("liszt:updated"); 

