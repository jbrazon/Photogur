// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
      function append(title, content) {
            var grid = document.querySelector('#columns');
            var item = document.createElement('div');
            var h = '<div class="panel panel-primary">';
            h += '<div class="panel-heading">';
            h += title;
            h += '</div>';
            h += '<div class="panel-body">';
            h += content;
            h += '</div>';
            h += '</div>';
            salvattore['append_elements'](grid, [item]) item.outerHTML = h;
        }
        $.getJSON("https://www.googleapis.com/books/v1/volumes?q=inauthor:Ernest+Hemingway&callback=?", function (data) {
            $(data.items).each(function (i, book) {
                append(book.volumeInfo.title, book.volumeInfo.description);
            });
        });