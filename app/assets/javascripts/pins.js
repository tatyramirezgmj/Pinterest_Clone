var ready;

$(document).on("ready", function(){
  $('#pins').imagesLoaded(function() {
    return $('#pins').masonry({
      itemSelector: '.box',
      isFitWidth: true
    });
  })
});
