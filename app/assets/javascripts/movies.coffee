# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $('#search').watermark 'Search...', useNative: false
  $('ul.movie-content li').hover (->
    $(this).find('div').slideDown 'fast'
    return
  ), ->
    $(this).find('div').slideUp 'fast'
    return
  $('#search').keyup (event) ->
    search_text = $('#search').val()
    rg = new RegExp(search_text, 'i')
    $('ul.movie-content li div h1.title').each ->
      if $.trim($(this).html()).search(rg) == -1
        #$(this).parent().parent().animate({opacity:'0.0'}, 'fast', function() {
        $(this).parent().parent().parent().css 'display', 'none'
        #});
      else
        $(this).parent().parent().parent().css 'display', ''
        #$(this).parent().parent().animate({opacity:'1.0'}, 'fast');
      return
    return
  return
