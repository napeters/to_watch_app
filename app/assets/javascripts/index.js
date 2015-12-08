$(function() {

  $('body').on('click', '.nav-watching', function() {
    $(this).css({'font-weight': 'bold', 'border-right': 'none'});
    $('.nav-to-watch').css({'font-weight': 'normal', 'border-right': '2px solid lightgray'});
    $('.nav-watched').css({'font-weight': 'normal', 'border-right': '2px solid lightgray'});
    $('.list-watching').css('display', 'inline');
    $('.list-to-watch').css('display', 'none');
    $('.list-watched').css('display', 'none');
  });

  $('body').on('click', '.nav-to-watch', function() {
    $(this).css({'font-weight': 'bold', 'border-right': 'none'});
    $('.nav-watching').css({'font-weight': 'normal', 'border-right': '2px solid lightgray'});
    $('.nav-watched').css({'font-weight': 'normal', 'border-right': '2px solid lightgray'});
    $('.list-watching').css('display', 'none');
    $('.list-to-watch').css('display', 'inline');
    $('.list-watched').css('display', 'none');
  });

  $('body').on('click', '.nav-watched', function() {
    $(this).css({'font-weight': 'bold', 'border-right': 'none'});
    $('.nav-to-watch').css({'font-weight': 'normal', 'border-right': '2px solid lightgray'});
    $('.nav-watching').css({'font-weight': 'normal', 'border-right': '2px solid lightgray'});
    $('.list-watching').css('display', 'none');
    $('.list-to-watch').css('display', 'none');
    $('.list-watched').css('display', 'inline');
  });

});
