// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

//= require jquery3
//= require jquery_ujs
//= require bootstrap-sprockets

$(function(){
    setTimeout("$('.flash').fadeOut('slow')", 2000);
  });