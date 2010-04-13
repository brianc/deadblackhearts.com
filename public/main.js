$(function() {
  $('a').click(function() {
    pageTracker._trackPageview($(this).attr('href'));
  });
});
try{
  var pageTracker = _gat._getTracker("UA-6571948-1");
  pageTracker._trackPageview();
} catch(err) {}
