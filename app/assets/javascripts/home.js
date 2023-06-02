$(document).on('turbolinks:load', function() {
    $('#see-more-categories').click(function(e) {
      e.preventDefault();
      $.ajax({
        url: $(this).attr('href'),
        type: 'GET',
        dataType: 'script'
      });
    });
  });
  