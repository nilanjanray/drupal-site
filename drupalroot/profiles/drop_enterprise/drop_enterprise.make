; The Drush Make API version. This should always be 2.
api = 2

core = 7.x

projects[drupal][version] = 7.15

;Profiler Integration

libraries[profiler][download][type] = "get"
libraries[profiler][download][url] = "http://ftp.drupal.org/files/projects/profiler-7.x-2.0-beta1.tar.gz"
libraries[profiler][patch][] = "http://drupal.org/files/fix_disabled_module_errors-1616462-3.patch"


;Drop Enterprise specific contrib-modules

projects[views][version] = 3.5
projects[views][subdir] = contrib

projects[features][version] = 1.0
projects[features][subdir] = contrib

projects[strongarm][version] = 2.0
projects[strongarm][subdir] = contrib


;Apps & level ten

projects[apps][version] = 1.0-beta7
projects[apps][subdir] = contrib

projects[levelten_apps][version] = 1.0-rc2
projects[levelten_apps][subdir] = contrib

;Panels related
projects[panels_everywhere][version] = 1.0-rc1
projects[panels_everywhere][subdir] = contrib

;Enterprise Base

;projects[enterprise_base][version] = 1.0-beta11
;projects[enterprise_base][subdir] = contrib

;Mongo db inclusion

;projects[apps][version] = 1.0-rc2
;projects[apps][subdir] = contrib

;EFQ view inclusion for mongodb



;Spark

projects[spark][type] = module
projects[spark][download][type] = git
projects[spark][download][branch] = 7.x-1.x


;projects[ns_core][version] = 2.0-beta4
;projects[ns_core][download][type] = git
;projects[ns_core][download][branch] = 7.x-2.x
