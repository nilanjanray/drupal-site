; A separate drupal-org-core.make file makes it so we can apply core patches
; if we need to.

api = 2
core = 7.x
projects[drupal][type] = core
projects[drupal][version] = 7.15

; CORE PATCHES
; Hide the profiles under /profiles, so Spark is the only one. This allows
; the installation to start at the Language selection screen, bypassing a
; baffling and silly choice, especially for non-native speakers.
projects[drupal][patch][1780598] = http://drupal.org/files/spark-install-1780598-5.patch
; This requires a core bug fix to not show the profile selection page when only
; one profile is visible.
projects[drupal][patch][1074108] = http://drupal.org/files/1074108-skip-profile-16-7.x-do-not-test.patch

; Add ability to pass #attributes to the drupal_add_js function.
projects[drupal][patch][1664602] = http://drupal.org/files/1664602-1.patch

; Raise minimum PHP version to work around core requirements check bug.
; Keep eyeballs posted on http://drupal.org/node/1724130.
projects[drupal][patch][1724012] = http://drupal.org/files/drupal-increase-php-version-1724012_0.patch
