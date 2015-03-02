// The canvas for your awesome JS code
$('#translations-form').on('submit', function() {
  var phrase = $('#phrase-field').val();
  $('#translations-list').append('<li class="translation-line">' + phrase + '</li>')
  $('#translations-block').fadeIn();
  $('.translation-line').fadeIn();
  $('#phrase-field').val('');
});

$('#clean-list-button').on('click', function() {
  $('#translations-block').fadeOut();
  $('#translations-list').empty();
});
