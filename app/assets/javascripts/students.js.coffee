# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$("#student_gender").attr 'class', 'chosen_field'


$(".chosen_field").css 'display', ''


  
# enable chosen js
$('.chosen_field').chosen 
	allow_single_deselect: true 
	no_results_text: 'No results matched' 


$("#sponsors").chosen().change ->
  $("#financial_sponsor_id").empty()
  $(this).find(":selected").each (i, item) ->
    $("#financial_sponsor_id").append $(item).clone()

   


$("a[data-toggle=modal]").click ->
  target = ($ @).attr('data-target')
  url = ($ @).attr('href')
  ($ target).load(url)



$("#sponsors").ajaxChosen
  type: "GET"
  url: "/sponsors.json"
  dataType: "json"
, (data) ->
  results = []
  $.each data, (i, val) ->
    results.push
      value: val.value
      text: val.text


  results

