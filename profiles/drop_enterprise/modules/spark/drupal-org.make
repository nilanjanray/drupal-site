; This is a standard make file for packaging the distribution along with any
; contributed modules/themes or external libraries. Some examples are below.
; See http://drupal.org/node/159730 for more details.

api = 2
core = 7.x

; Contributed modules; standard.

projects[responsive_bartik][type] = theme
projects[responsive_bartik][version] = 1.x-dev
;projects[responsive_bartik][download][type] = git
;projects[responsive_bartik][download][branch] = 7.x-1.x
projects[responsive_bartik][subdir] = contrib

projects[ctools][type] = module
projects[ctools][version] = 1.2
projects[ctools][subdir] = contrib
; Fix incompatibilities with jQuery 1.7.
projects[ctools][patch][1494860] = "http://drupal.org/files/ctools-dependent-js-broken-with-jquery-1.7-1494860-30.patch"

projects[entity][type] = module
projects[entity][version] = 1.0-rc3
projects[entity][subdir] = contrib

projects[fape][type] = module
projects[fape][version] = 1.1
projects[fape][subdir] = contrib

projects[jquery_update][type] = module
projects[jquery_update][version] = 2.x-dev
projects[jquery_update][subdir] = contrib

projects[json2][type] = module
projects[json2][version] = 1.1
projects[json2][subdir] = contrib

projects[libraries][type] = module
projects[libraries][version] = 2.x-dev
projects[libraries][subdir] = contrib

projects[panels][type] = module
projects[panels][version] = 3.3
projects[panels][subdir] = contrib
; Apply layout settings form submit callback fix needed for layout module.
projects[panels][patch][] = "http://drupal.org/files/layout-settings-submit.patch"
; Fix for strict warning on home page.
projects[panels][patch][1632898] = "http://drupal.org/files/1632898-10.patch"

projects[resp_img][type] = module
projects[resp_img][version] = 1.3
projects[resp_img][subdir] = contrib

; Contributed projects; Sparkish.
projects[aloha][type] = module
projects[aloha][version] = 2.0-alpha1
;projects[aloha][download][type] = git
;projects[aloha][download][branch] = 7.x-2.x
projects[aloha][subdir] = contrib

projects[admin_icons][type] = module
projects[admin_icons][version] = 1.x-dev
;projects[admin_icons][download][type] = git
;projects[admin_icons][download][branch] = 7.x-1.x
projects[admin_icons][subdir] = contrib

projects[navbar][type] = module
projects[navbar][version] = 1.x-dev
;projects[navbar][download][type] = git
;projects[navbar][download][branch] = 7.x-1.x
projects[navbar][subdir] = contrib

projects[edit][type] = module
projects[edit][version] = 1.0-alpha5
;projects[edit][download][type] = git
;projects[edit][download][branch] = 7.x-1.x
projects[edit][subdir] = contrib

projects[ember][type] = theme
projects[ember][version] = 1.0-alpha4
;projects[ember][download][type] = git
;projects[ember][download][branch] = 7.x-1.x
projects[ember][subdir] = contrib

projects[gridbuilder][type] = module
projects[gridbuilder][version] = 1.0-alpha2
;projects[gridbuilder][download][type] = git
;projects[gridbuilder][download][branch] = 7.x-1.x
projects[gridbuilder][subdir] = contrib

projects[layout][type] = module
projects[layout][version] = 1.0-alpha4
;projects[layout][download][type] = git
;projects[layout][download][branch] = 7.x-1.x
projects[layout][subdir] = contrib

projects[every_field][type] = module
projects[every_field][version] = 1.x-dev
projects[every_field][subdir] = contrib

; Contributed modules; UX++
projects[module_filter][type] = module
projects[module_filter][version] = 1.7
projects[module_filter][subdir] = contrib

; Libraries.
; NOTE: These need to be listed in http://drupal.org/packaging-whitelist.

libraries[json2][download][type] = get
libraries[json2][download][url] = https://github.com/douglascrockford/JSON-js/blob/master/json2.js
libraries[json2][revision] = fc535e9cc8fa78bbf45a85835c830e7f799a5084
