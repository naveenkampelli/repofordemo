core = 7.x
api = 2

; Drupal core.
projects[drupal][type] = core
projects[drupal][version] = 7.34
; Fix duplicated terms being created in certain cases with term ref fields.
projects[drupal][patch][] = http://drupal.org/files/D7-autocreate-1343822-9-notests-do-not-test.patch
; Output IE edge / chrome frame trigger (http://drupal.org/node/1203112#comment-6972468)
projects[drupal][patch][] = "http://drupal.org/files/add-x-ua-compatible-1203112-26.patch"
; Highlight incorrectly completed form fields
projects[drupal][patch][] = "http://drupal.org/files/fapi-radio-checkbox-error-highlighting-222380-30.patch"
; path_load and drupal_lookup_path are inconsistent when choosing the 'current' path of an entity
; projects[drupal][patch][] = "http://drupal.org/files/drupal-1934086-path_load_order-1.patch"
; Tame the number of POST parameters Drupal sends on AJAX. Otherwise things get truncated and stuff breaks.
projects[drupal][patch][] = "https://raw.githubusercontent.com/computerminds/drupal-patches/master/drupal-core-ajax-page-ids.patch"
; Fix tabledrag on multi-valued field collection fields which are nested inside themselves.
projects[drupal][patch][] = "http://drupal.org/files/issues/drupal-2126545-02-nested-fields-tabledrag.patch"
; Fix very slow states.
projects[drupal][patch][] = "https://raw.githubusercontent.com/computerminds/drupal-patches/master/drupal-7-states-toooooo-slow.patch"

projects[spire_profile][type] = profile
projects[spire_profile][download][type] = git
projects[spire_profile][download][url] = git@github.com:computerminds/spire.git
projects[spire_profile][download][branch] = release/sa-core-2015-001
