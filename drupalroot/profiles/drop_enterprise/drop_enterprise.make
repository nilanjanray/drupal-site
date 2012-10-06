; The Drush Make API version. This should always be 2.
api = 2

core = 7.x

projects[drupal][version] = 7.15

;Drupal profiler Library

libraries[profiler][download][type] = "get"
libraries[profiler][download][url] = "http://ftp.drupal.org/files/projects/profiler-7.x-2.0-beta1.tar.gz"
libraries[profiler][patch][] = "http://drupal.org/files/fix_disabled_module_errors-1616462-3.patch"


;Drupal contrib-modules

projects[views][version] = 3.5
projects[views][subdir] = contrib

;projects[ctools][version] = 1.2
;projects[ctools][subdir] = contrib

;projects[panels][version] = 3.3
;projects[panels][subdir] = contrib

projects[features][version] = 1.0
projects[features][subdir] = contrib

projects[strongarm][version] = 2.0
projects[strongarm][subdir] = contrib

projects[nodequeue][subdir] = contrib
projects[nodequeue][version] = 2.0-beta1
;projects[nodequeue][patch][] = "http://drupal.org/files/issues/1023606-qid-to-name-6.patch"
;projects[nodequeue][patch][] = "http://drupal.org/files/issues/nodequeue_d7_autocomplete-872444-6.patch"

;Apps & level ten


;projects[apps][version] = 1.0-beta7
;projects[apps][subdir] = contrib

;Mongo db inclusion

;projects[apps][version] = 1.0-rc2
;projects[apps][subdir] = contrib

;Open Enterpise project

projects[apps][version] = 1.0-rc3


;Spark

projects[spark][type] = module
projects[spark][download][type] = git
projects[spark][download][branch] = 7.x-1.x


; project version you're using.
;projects[draggableviews][type] = module
;projects[draggableviews][download][type] = git
;projects[draggableviews][download][revision] = 9677bc18b7255e13c33ac3cca48732b855c6817d
;projects[draggableviews][download][branch] = 7.x-2.x

;projects[ns_core][version] = 2.0-beta4
;projects[ns_core][download][type] = git
;projects[ns_core][download][branch] = 7.x-2.x
