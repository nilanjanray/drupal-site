// $Id$
(function(a){Drupal.toolbar=Drupal.toolbar||{},Drupal.behaviors.toolbar={attach:function(b){a("#toolbar",b).once("toolbar",Drupal.toolbar.init),a("#toolbar a.toggle",b).once("toolbar-toggle").click(function(b){return Drupal.toolbar.toggle(),a(window).triggerHandler("resize"),!1})}},Drupal.toolbar.init=function(){var b=a.cookie("Drupal.toolbar.collapsed");b==1?Drupal.toolbar.collapse():Drupal.toolbar.expand()},Drupal.toolbar.collapse=function(){var b=Drupal.t("Show shortcuts");a("#toolbar div.toolbar-drawer").addClass("collapsed"),a("#toolbar a.toggle").removeClass("toggle-active").attr("title",b).html(b),a("body").removeClass("toolbar-drawer").css("paddingTop",Drupal.toolbar.height()),a.cookie("Drupal.toolbar.collapsed",1,{path:Drupal.settings.basePath,expires:36500})},Drupal.toolbar.expand=function(){var b=Drupal.t("Hide shortcuts");a("#toolbar div.toolbar-drawer").removeClass("collapsed"),a("#toolbar a.toggle").addClass("toggle-active").attr("title",b).html(b),a("body").addClass("toolbar-drawer").css("paddingTop",Drupal.toolbar.height()),a.cookie("Drupal.toolbar.collapsed",0,{path:Drupal.settings.basePath,expires:36500})},Drupal.toolbar.toggle=function(){a("#toolbar div.toolbar-drawer").hasClass("collapsed")?Drupal.toolbar.expand():Drupal.toolbar.collapse()},Drupal.toolbar.height=function(){var b=a("#toolbar").outerHeight();return a("#toolbar").css("filter").match(/DXImageTransform\.Microsoft\.Shadow/)&&(b-=a("#toolbar").get(0).filters.item("DXImageTransform.Microsoft.Shadow").strength),b}})(jQuery);