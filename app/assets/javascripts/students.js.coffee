# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(".chosen").css 'display', ''

$(".chosen").ajaxChosen
  type: "GET"
  url: "/sponsors/autocomplete"
  dataType: "json"
, (data) ->
  results = []
  $.each data, (i, val) ->
    results.push
      value: val.value
      text: val.text


  results

