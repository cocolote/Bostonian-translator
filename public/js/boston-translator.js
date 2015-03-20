// The canvas for your awesome JS code
$('#translations-form').on('submit', function(event) {
  event.preventDefault();
  var phrase = $('#phrase-field').val();
  $.post('/translate', {phrase: phrase});
  var trans = '';
  $.get('/get_translation', function(translation){
    trans = translation
    $('#translations-list').append('<li class="translation-line">' + trans + '</li>');
    $('#translations-block').fadeIn();
    $('.translation-line').fadeIn();
    $('#phrase-field').val('');
  });
});

$('#clean-list-button').on('click', function() {
  $('#translations-block').fadeOut();
  $('#translations-list').empty();
});
