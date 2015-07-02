; REQUIRED ATTRIBUTES

; The Drush Make API version. This should always be 2.
api = 2

;core section
core = 7.x
projects[drupal][version] = 7.38

;contrib modules ctools & panels.
projects[ctools][version] = 1.7
projects[ctools][subdir] = contrib

projects[entity][version] = 1.6
projects[entity][subdir] = contrib

projects[panels][version] = 3.5
projects[panels][subdir] = contrib

;contrib modules for views.
projects[views][version] = 3.11
projects[views][subdir] = contrib

;contrib set for apachesolr & apachesolr views.
projects[apachesolr][version] = 1.7
projects[apachesolr][subdir] = contrib

;projects[apachesolr_views][version] = 1.x-dev
;projects[apachesolr_views][subdir] = contrib

projects[apachesolr_views][type] = module
projects[apachesolr_views][download][type] = git
projects[apachesolr_views][download][branch] = 7.x-1.x
projects[apachesolr_views][subdir] = contrib

;Keeping admin-menu to navigate admin interface more easier other wise
;this is not required for this specific requirement.
projects[admin_menu][version] = 3.0-rc5
projects[admin_menu][subdir] = contrib

;Theme section

projects[zen][version] = 5.5
projects[zen][subdir] = contrib 
