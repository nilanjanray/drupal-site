// $Id$
(function(a){Drupal.behaviors.filterGuidelines={attach:function(b){a(".filter-guidelines",b).once("filter-guidelines").find(":header").hide().parents(".filter-wrapper").find("select.filter-list").bind("change",function(){a(this).parents(".filter-wrapper").find(".filter-guidelines-item").hide().siblings(".filter-guidelines-"+this.value).show()}).change()}}})(jQuery);