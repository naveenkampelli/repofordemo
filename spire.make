core = 7.x
api = 2


; Contrib projects (alphabetical order)
; ==============================================================================
projects[acl][subdir] = "contrib"
projects[acl][version] = "1.0"

projects[admin_menu][subdir] = "contrib"
projects[admin_menu][version] = "3.0-rc4"

projects[admin_views][subdir] = "contrib"
projects[admin_views][version] = "1.2"

projects[addressfield][subdir] = "contrib"
projects[addressfield][version] = "1.0-beta5"

projects[availability_calendars][subdir] = "contrib"
projects[availability_calendars][version] = "5.1"

projects[bean][subdir] = "contrib"
projects[bean][version] = "1.7"
projects[bean][patch][] = "http://drupal.org/files/issues/bean-2221341-01-search-indexing.patch"
projects[bean][patch][] = "http://drupal.org/files/issues/block-add-access-issue-2148099-2.patch"
projects[bean][patch][] = "http://www.drupal.org/files/issues/static_cache_in-2324575-1.patch"

projects[blockreference][subdir] = "contrib"
projects[blockreference][version] = "1.15"
projects[blockreference][patch][] = "http://drupal.org/files/blockreference-2118711-07-more-context-to-alterers.patch"
projects[blockreference][patch][] = "http://drupal.org/files/issues/blockreference-2278455-02-uuid-features-support.patch"

; Need the latest 4.x version to get the fix for the following issue:
;  - http://drupal.org/node/2088735
;  - http://drupal.org/node/2116973
projects[brightcove][subdir] = "contrib"
projects[brightcove][type] = "module"
projects[brightcove][download][type] = "git"
projects[brightcove][download][url] = "http://git.drupal.org/project/brightcove.git"
projects[brightcove][download][revision] = "dbc85276eadeb226f6443e6836fe452bffef2e96"
projects[brightcove][patch][] = "http://cgit.drupalcode.org/brightcove/patch/?id=158f2ae0e75a80bd9f0f12e80ae08c0b08f1cada"

libraries[brightcove][download][type] = "get"
libraries[brightcove][download][url] = "https://github.com/BrightcoveOS/PHP-MAPI-Wrapper/archive/2.0.4.tar.gz"
libraries[brightcove][patch][] = "http://drupal.org/files/brightcove-library-2088735-01-fix-brightcove-library.patch"

projects[backup_migrate][subdir] = "contrib"
projects[backup_migrate][version] = "2.8"

projects[backup_migrate_files][subdir] = "contrib"
projects[backup_migrate_files][version] = "1.x-dev"

projects[block_access][subdir] = "contrib"
projects[block_access][version] = "1.5"

projects[captcha][subdir] = "contrib"
projects[captcha][version] = "1.0"

projects[charts][subdir] = "contrib"
projects[charts][version] = "2.0-rc1"
projects[charts][patch][] = "http://drupal.org/files/issues/charts-2146261-01-add-data-point-description.patch"
projects[charts][patch][] = "http://drupal.org/files/issues/charts-js_alter-2079131-6.patch"

projects[content_access][subdir] = "contrib"
projects[content_access][version] = "1.2-beta2"

projects[css_injector][subdir] = "contrib"
projects[css_injector][version] = "1.10"

projects[email_registration][subdir] = "contrib"
projects[email_registration][version] = "1.2"

projects[entity_rules][subdir] = "contrib"
projects[entity_rules][version] = "1.x-dev"

libraries[highcharts][download][type] = 'get'
libraries[highcharts][download][url] = 'http://code.highcharts.com/zips/Highcharts-3.0.10.zip'
libraries[highcharts][download][subtree] = 'Highcharts-3.0.10/'

projects[cm_tools][subdir] = "contrib"
projects[cm_tools][type] = "module"
projects[cm_tools][download][type] = "git"
projects[cm_tools][download][url] = "https://github.com/computerminds/cm_tools.git"
projects[cm_tools][download][revision] = "2075a55af211bf83ca70be2242e8424c08804032"

projects[colorbox][subdir] = "contrib"
projects[colorbox][version] = "2.5"
; Custom patch for Spire to enable support of our sort of revisions.
projects[colorbox][patch][] = "modules/custom/spire_media_handling/colorbox-SPIRE-fix-mobile-matchMedia.patch"
projects[colorbox][patch][] = "modules/custom/spire_webform/colorbox_webforms_ensure_drupal_behaviours_detach_is_called_Issue_24306_2.patch"

projects[colorbox_node][subdir] = "contrib"
projects[colorbox_node][version] = "3.3"

libraries[colorbox][download][type] = "get"
libraries[colorbox][download][url] = "https://github.com/jackmoore/colorbox/archive/1.4.26.tar.gz"

projects[ctools][subdir] = "contrib"
projects[ctools][version] = "1.4"
; This allows us to NOT get a WSOD when a class isn't found.
projects[ctools][patch][] = "http://drupal.org/files/1775612-calling-missing-file-2.patch"

projects[custom_add_another][subdir] = "contrib"
projects[custom_add_another][version] = "1.0-rc3"

projects[date][subdir] = "contrib"
projects[date][version] = "2.8"

projects[deploy][subdir] = "contrib"
projects[deploy][version] = "2.0-alpha2"
projects[deploy][patch][] = "http://drupal.org/files/deploy-1604938_1.patch"
projects[deploy][patch][] = "modules/custom/spire_page/deploy-referenced-revisions.patch"

projects[diff][subdir] = "contrib"
projects[diff][version] = "3.2"

projects[devel][subdir] = "contrib"
projects[devel][version] = "1.5"
projects[devel][patch][] = "http://drupal.org/files/devel-show-permission-machine-name-1734534-8.patch"

projects[elements][subdir] = "contrib"
projects[elements][version] = "1.4"

projects[encrypt][subdir] = "contrib"
projects[encrypt][version] ="2.0-beta3" 

projects[entity][subdir] = "contrib"
projects[entity][version] = "1.6"
projects[entity][patch][] = "https://drupal.org/files/issues/entity-1788568-12-entity_metadata_wrapper_revisions.patch"
projects[entity][patch][] = "modules/custom/spire_page/entity-fix-bean-imports.patch"
projects[entity][patch][] = "https://raw.githubusercontent.com/computerminds/drupal-patches/master/entity_save_original.patch"

projects[entitycache][subdir] = "contrib"
projects[entitycache][version] = "1.2"

projects[entity_dependency][subdir] = "contrib"
projects[entity_dependency][version] = "1.0-alpha1"

projects[entity_dependency][subdir] = "contrib"
projects[entity_dependency][type] = "module"
; Latest dev needed for it to work at all.
projects[entity_dependency][download][type] = "git"
projects[entity_dependency][download][url] = "http://git.drupal.org/project/entity_dependency.git"
projects[entity_dependency][download][revision] = "f20eb2945f880736b00c82d8a2b70fe29ef3c93d"
projects[entity_dependency][patch][] = "http://drupal.org/files/1538848-missing-bundle-property-5.patch"
projects[entity_dependency][patch][] = "modules/custom/spire_page/entity_dependency-referenced-revisions.patch"

projects[entityreference][subdir] = "contrib"
projects[entityreference][version] = "1.1"
projects[entityreference][patch][] = "http://drupal.org/files/1836106.patch"
projects[entityreference][patch][] = "http://drupal.org/files/issues/2118465-add-backreference-5.patch"

; This module is here to get job categories importing.
; Bleeding edge to get:
;  - https://drupal.org/node/2053789
projects[entityreference_autocreate][subdir] = "contrib"
projects[entityreference_autocreate][type] = "module"
projects[entityreference_autocreate][download][type] = "git"
projects[entityreference_autocreate][download][url] = "http://git.drupal.org/project/entityreference_autocreate.git"
projects[entityreference_autocreate][download][revision] = "9f6906aa4f1e27d8fb609180a445d27a2ddd1636"

projects[eu_cookie_compliance][subdir] = "contrib"
projects[eu_cookie_compliance][version] = "1.14"
projects[eu_cookie_compliance]patch][] = "http://www.drupal.org/files/issues/popup_events-2423649-1.patch"

projects[facebook_pull][subdir] = "contrib"
projects[facebook_pull][version] = "1.0"

projects[features][subdir] = "contrib"
projects[features][version] = "2.0"
; There may be a future need to tame the features_rebuild that features performs
; when loading the admin/modules page. See progress at
;   http://drupal.org/node/1917288
;   http://drupal.org/node/658772

projects[feeds][subdir] = "contrib"
projects[feeds][version] = "2.0-alpha8"

projects[feeds_tamper][subdir] = "contrib"
projects[feeds_tamper][version] = "1.0-beta5"
projects[feeds_tamper][patch][] = "http://drupal.org/files/feeds_tamper_is_array_error-2119745-1.patch"

projects[feeds_xpathparser][subdir] = "contrib"
projects[feeds_xpathparser][version] = "1.0-beta4"

projects[fences][subdir] = "contrib"
projects[fences][type] = "module"
; 7.x-1.0 plus patches including
;   Issue #1561244: Undefined Index (with installation profiles and features?)
;   See: http://drupal.org/node/1561244
projects[fences][download][type] = "git"
projects[fences][download][url] = "http://git.drupal.org/project/fences.git"
projects[fences][download][revision] = "67206b5220cbebf52e8e6a290ccb977b2420b2ad"

projects[field_collection][subdir] = "contrib"
projects[field_collection][version] = "1.0-beta7"
; Needed for content deploy to work.
projects[field_collection][patch][] = "http://drupal.org/files/issues/field_collection-field_collection_uuid-2075325-3.patch"
; Following patches needed for our sortable-on-form / contextual linky edit workflow.
projects[field_collection][patch][] = "http://drupal.org/files/field_collection-sort-only-widget-1995358-3.patch"
; Custom patch for Spire to enable support of our sort of revisions.
projects[field_collection][patch][] = "modules/custom/spire_content_workflow/field_collection-SPIRE-content-workflow3.patch"

projects[field_display_label][subdir] = "contrib"
projects[field_display_label][version] = "1.3"

projects[field_formatter_settings][subdir] = "contrib"
projects[field_formatter_settings][version] = "1.1"

projects[field_group][subdir] = "contrib"
projects[field_group][version] = "1.3"

projects[file_entity][subdir] = "contrib"
projects[file_entity][version] = "2.0-alpha3"
projects[file_entity][patch][] = "http://drupal.org/files/issues/2135361-fix-download-link-view-handler.patch"
projects[file_entity][patch][] = "http://drupal.org/files/file_entity-edit_file_in_upload_process-2074625-3.patch"
projects[file_entity][patch][] = "http://drupal.org/files/alt_title_double_encoding-1987568-7.patch"

projects[field_extrawidgets][subdir] = "contrib"
projects[field_extrawidgets][version] = "1.1"
projects[field_extrawidgets][patch][] = "http://drupal.org/files/issues/field_extrawidgets_notice_string_offset_cast-2097901-3.patch"

projects[field_collection_deploy][subdir] = "contrib"
projects[field_collection_deploy][version] = "1.0-beta1"
projects[field_collection_deploy][patch][] = "http://drupal.org/files/issues/field_collection_deploy-entity_reference_fix-2126289-2.patch"
projects[field_collection_deploy][patch][] = "http://drupal.org/files/issues/field_collection_deploy-2123181-03-fix-with-latest-fc.patch"

projects[filter_perms][subdir] = "contrib"
projects[filter_perms][version] = "1.0"

projects[flag][subdir] = "contrib"
projects[flag][version] = "3.5"
projects[flag][patch][] = "https://www.drupal.org/files/issues/Undefined-index-token-type-in-flag_token_info-2197041-1.patch"

projects[flagging_form][subdir] = "contrib"
projects[flagging_form][download][type] = "git"
projects[flagging_form][download][url] = "http://git.drupal.org/project/flagging_form.git"
projects[flagging_form][download][revision] = "55b342c1db7d9296aa5ac72bd6372062aad3f06b"

projects[form_builder][subdir] = "contrib"
projects[form_builder][version] = "1.6"
projects[form_builder][patch][] = "modules/custom/spire_webform/form_builder_title_length.patch"

;projects[geocoder][subdir] = "contrib"
;projects[geocoder][version] = "1.2"

projects[geofield][subdir] = "contrib"
projects[geofield][version] = "2.1"
projects[geofield][patch][] = "https://raw.githubusercontent.com/computerminds/drupal-patches/master/geofield-ctools-missing.patch"

projects[geophp][subdir] = "contrib"
projects[geophp][version] = "1.7"

projects[globalredirect][subdir] = "contrib"
projects[globalredirect][version] = "1.5"

projects[google_analytics][subdir] = "contrib"
projects[google_analytics][version] = "1.4"

projects[google_appliance][subdir] = "contrib"
projects[google_appliance][version] = "1.11"
projects[google_appliance][patch][] = "http://drupal.org/files/issues/google_appliance-2219513-02-custom-menu-path.patch"

projects[google_appliance_suggest][subdir] = "contrib"
projects[google_appliance_suggest][version] = "1.4"

libraries[highstocks][download][type] = "get"
libraries[highstocks][download][url] = "http://code.highcharts.com/zips/Highstock-2.0.4.zip"

projects[htmlpurifier][subdir] = "contrib"
projects[htmlpurifier][version] = "1.0"

libraries[htmlpurifier][download][type] = "get"
libraries[htmlpurifier][download][url] = "http://htmlpurifier.org/releases/htmlpurifier-4.6.0.tar.gz"

projects[ife][subdir] = "contrib"
projects[ife][version] = "2.0-alpha2"
projects[ife][patch][] = "https://www.drupal.org/files/issues/ife-invalid_argument_foreach-1965262-3.patch"

projects[image_styles_by_themes][subdir] = "contrib"
projects[image_styles_by_themes][version] = "1.0-alpha2"

projects[imce][subdir] = "contrib"
projects[imce][version] = "1.9"

projects[imce_mkdir][subdir] = "contrib"
projects[imce_mkdir][version] = "1.0"

projects[imce_plupload][subdir] = "contrib"
projects[imce_plupload][version] = "1.2"

projects[job_scheduler][subdir] = "contrib"
projects[job_scheduler][version] = "2.0-alpha3"

projects[libraries][subdir] = "contrib"
projects[libraries][version] = "2.1"

projects[link][subdir] = "contrib"
projects[link][version] = "1.2"

projects[linkchecker][subdir] = "contrib"
projects[linkchecker][version] = "1.1"
projects[linkchecker][patch][] = "http://drupal.org/files/issues/field-collection-compatibility-1888102-8.patch"

projects[login_destination][subdir] = "contrib"
projects[login_destination][version] = "1.1"

projects[jquery_update][subdir] = "contrib"
; We need to roll back to vanilla Drupal version on admin screen, which is not available in 7.x-2.4
projects[jquery_update][download][type] = "git"
projects[jquery_update][download][url] = "http://git.drupal.org/project/jquery_update.git"
projects[jquery_update][download][revision] = "c13f6ea389abf0b8546777ce2259c95783003b9b"

projects[safeword][subdir] = "contrib"
projects[safeword][version] = "1.13"

projects[mailsystem][subdir] = "contrib"
projects[mailsystem][version] = "2.34"

projects[media][subdir] = "contrib"
projects[media][version] = "2.0-alpha3"
projects[media][patch][] = "http://drupal.org/files/media-js-error-on-wysiwyg-with-multi-field-1630288-21.patch"

projects[media_colorbox][subdir] = "contrib"
projects[media_colorbox][version] = "1.0-rc4"
projects[media_colorbox][patch][] = "http://drupal.org/files/media_colorbox-fix_console_undefined.patch"

projects[media_youtube][subdir] = "contrib"
projects[media_youtube][version] = "2.0-rc4"
projects[media_youtube][patch][] = "http://drupal.org/files/issues/media_youtube_install_file_displays-1863788-9.patch"

projects[memcache][subdir] = "contrib"
projects[memcache][version] = "1.0"

projects[message][subdir] = "contrib"
projects[message][version] = "1.9"
projects[message][patch][] = "https://www.drupal.org/files/issues/message-listing-perm-2368223-01.patch"

projects[message_notify][subdir] = "contrib"
projects[message_notify][version] = "2.5"
projects[message_notify][patch][] = "https://github.com/darthsteven/message_notify/commit/c7ce25a70266739a23558d292555570556d10922.patch"
projects[message_notify][patch][] = "https://github.com/darthsteven/message_notify/commit/64bf9ca7a63a4e6a762ca7c55cef6d76719cd738.patch"

projects[message_notify_logger][subdir] = "contrib"
projects[message_notify_logger][download][type] = "git"
projects[message_notify_logger][download][url] = "http://git.drupal.org/project/message_notify_logger.git"
projects[message_notify_logger][download][revision] = "a180d1822ac314cbc25b5afccc819bd023d5cb94"

projects[message_subscribe][subdir] = "contrib"
projects[message_subscribe][version] = "1.0-rc2"
projects[message_subscribe][patch][] = "https://github.com/darthsteven/message_subscribe/commit/7d0d7835a09b316e0e368a5715d371dfafeb3310.patch"

projects[message_ui][subdir] = "contrib"
projects[message_ui][version] = "1.4"

projects[metatag][subdir] = "contrib"
projects[metatag][version] = "1.0-beta7"

projects[migrate][subdir] = "contrib"
projects[migrate][version] = "2.5"

projects[mimemail][subdir] = "contrib"
projects[mimemail][version] = "1.0-beta3"

projects[module_filter][subdir] = "contrib"
projects[module_filter][version] = "1.8"

projects[node_export][subdir] = "contrib"
projects[node_export][version] = "3.0"
projects[node_export][patch][] = "http://drupal.org/files/issues/node_export-1670740-35-field-collection.patch"

projects[node_view_permissions][subdir] = "contrib"
projects[node_view_permissions][version] = "1.5"

projects[oauth][subdir] = "contrib"
projects[oauth]['version'] = "3.2"

projects[password_policy][subdir] = "contrib"
projects[password_policy][version] = "1.9"

projects[openlayers][subdir] = "contrib"
projects[openlayers][version] = "2.0-beta7"
projects[openlayers][patch][] = "http://drupal.org/files/issues/openlayers-beta7-2232445-remove-drush-make.diff"

libraries[openlayers][download][type] = "file"
libraries[openlayers][download][url] = "https://github.com/computerminds/openlayers/archive/2.12.tar.gz"
libraries[openlayers][directory_name] = "openlayers"

projects[options_element][subdir] = "contrib"
projects[options_element][version] = "1.10"

projects[paragraphs][subdir] = "contrib"
projects[paragraphs][version] = "1.0-beta2"

projects[pathauto][subdir] = "contrib"
projects[pathauto][version] = "1.2"

projects[pathauto_persist][subdir] = "contrib"
projects[pathauto_persist][version] = "1.3"

projects[phone][subdir] = "contrib"
projects[phone][version] = "1.0-beta1"
projects[phone][patch][] = "http://www.drupal.org/files/phone-rewrite-of-phone-gb-inc-1728312-24.patch"
projects[phone][patch][] = "https://www.drupal.org/files/issues/phone-fix-ife-2397855-1.patch"

projects[plupload][subdir] = "contrib"
projects[plupload][version] = "1.6"

projects[popup_field_group][subdir] = "contrib"
projects[popup_field_group][type] = "module"
projects[popup_field_group][download][type] = "git"
projects[popup_field_group][download][url] = "http://git.drupal.org/project/popup_field_group.git"
projects[popup_field_group][download][revision] = "e97385196757a5c532f774c85b164d8e23f6abc5"
projects[popup_field_group][patch][] = "modules/custom/spire_tile/popup_field_group_lazy_wysiwygs.patch"

projects[proj4js][subdir] = "contrib"
projects[proj4js][version] = "1.2"

projects[queue_ui][subdir] = "contrib"
projects[queue_ui][version] = "2.0-rc1"

projects[realname][subdir] = "contrib"
projects[realname][version] = "1.2"

projects[recaptcha][subdir] = "contrib"
projects[recaptcha][version] = "1.11"

projects[redirect][subdir] = "contrib"
projects[redirect][version] = "1.0-rc1"
; Attempt to curb infinite loops possibly caused by clashes with pathauto?
projects[redirect][patch][] = "http://drupal.org/files/redirect_loop_detection-1796596-68-reroll.patch"
projects[redirect][patch][] = "http://drupal.org/files/redirect_maintenance_on_new_path-1288768-10.patch"

projects[registration_role][subdir] = "contrib"
projects[registration_role][version] = "1.0"

projects[remember_me][subdir] = "contrib"
projects[remember_me][version] = "1.0"
projects[remember_me][patch][] = "http://www.drupal.org/files/issues/remember_me_remove_tabindex-2370955-1.patch"

projects[replicate][subdir] = "contrib"
projects[replicate][version] = "1.0"
projects[replicate][patch][] = "http://drupal.org/files/replicate-2098341-01-php-warning.patch"

projects[replicate_ui][subdir] = "contrib"
projects[replicate_ui][version] = "1.2"
projects[replicate_ui][patch][] = "http://drupal.org/files/issues/replicate_ui-2216307-01-alternative-host.patch"

projects[replicate_field_collection][subdir] = "contrib"
projects[replicate_field_collection][type] = "module"
projects[replicate_field_collection][download][type] = "git"
projects[replicate_field_collection][download][url] = "http://git.drupal.org/project/replicate_field_collection.git"
projects[replicate_field_collection][download][revision] = "aa71e32f7450b91f1c66b943d7e707ce0c644bdf"
projects[replicate_field_collection][patch][] = "http://drupal.org/files/replicate-field-collection-revision.patch"
projects[replicate_field_collection][patch][] = "http://drupal.org/files/issues/replicate_field_collection-2216309-01-alternative-host.patch"

projects[roleassign][subdir] = "contrib"
projects[roleassign][version] = "1.0"

projects[rules][subdir] = "contrib"
projects[rules][version] = "2.6"

projects[r4032login][subdir] = "contrib"
projects[r4032login][version] = "1.8"

projects[seckit][subdir] = "contrib"
projects[seckit][version] = "1.9"

; We use this to store arbitrary configuration on tiles.
projects[serialized_field][subdir] = "contrib"
projects[serialized_field][version] = "1.0-beta1"
projects[serialized_field][patch][] = "http://drupal.org/files/issues/serialized_field-2174871-01-devel-generate-integration.patch"

projects[session_expire][subdir] = "contrib"
projects[session_expire][subdir] = "contrib"
projects[session_expire][download][type] = "git"
projects[session_expire][download][url] = "http://git.drupal.org/project/session_expire.git"
projects[session_expire][download][revision] = "49c6eb5df2d2fa7a04300901572b8ca1687e42c8"
projects[session_expire][patch][] = "http://www.drupal.org/files/issues/session_expire-select-roles.patch"

projects[securepages][subdir] = "contrib"
projects[securepages][version] = "1.0-beta2"

projects[special_role][subdir] = "contrib"
projects[special_role][type] = "module"
projects[special_role][download][type] = "git"
projects[special_role][download][url] = "http://git.drupal.org/sandbox/jamsilver/2373379.git"
projects[special_role][download][revision] = "4783926be9d869d8227d7cd1ea6d59843aedffdd"

projects[strongarm][subdir] = "contrib"
projects[strongarm][version] = "2.0"

projects[system_stream_wrapper][subdir] = "contrib"
projects[system_stream_wrapper][version] = "1.0-rc1"

projects[taxonomy_entity_index][type] = module
projects[taxonomy_entity_index][subdir] = "contrib"
projects[taxonomy_entity_index][download][type] = "git"
projects[taxonomy_entity_index][download][url] = "http://git.drupal.org/project/taxonomy_entity_index.git"
projects[taxonomy_entity_index][download][revision] = "62c793615f406b986de495b21b3a4065a7f1a2bf"

projects[telephone][subdir] = "contrib"
projects[telephone][version] = "1.0-alpha1"

projects[totext][subdir] = "contrib"
projects[totext][type] = "module"
projects[totext][download][type] = "git"
projects[totext][download][url] = "http://git.drupal.org/sandbox/stevetweeddale/2348959.git"
projects[totext][download][revision] = "431696dab14403c421470fd96ee6246a9f6b4109"

projects[token][subdir] = "contrib"
projects[token][version] = "1.5"

projects[token_custom][subdir] = "contrib"
projects[token_custom][version] = "2.0-beta3"

projects[token_filter][subdir] = "contrib"
projects[token_filter][version] = "1.1"

projects[transliteration][subdir] = "contrib"
projects[transliteration][version] = "3.1"

projects[twitter][subdir] = "contrib"
projects[twitter][type] = "module"
; Need dev version as of feb 2014 for the twitter search api api v1.1 changes
projects[twitter][download][type] = "git"
projects[twitter][download][url] = "http://git.drupal.org/project/twitter.git"
projects[twitter][download][revision] = "396a4983a664a67fda338fb525dd718d585e20db"

projects[username_enumeration_prevention][subdir] = "contrib"
projects[username_enumeration_prevention][version] = "1.0"

projects[uuid][subdir] = "contrib"
projects[uuid][type] = "module"
; Need bleeding edge to get deploy to work with features.
projects[uuid][download][type] = "git"
projects[uuid][download][url] = "http://git.drupal.org/project/uuid.git"
projects[uuid][download][revision] = "45d745c48a20f6a3cfc12f3a634b81f21a519a0a"
projects[uuid][patch][] = "http://drupal.org/files/uuid_remove_contrib_support-2074599-2.patch"
projects[uuid][patch][] = "https://raw.githubusercontent.com/computerminds/drupal-patches/master/uuid-fix-fc-exports.patch"
; Patch to stop content deploy breaking when importing a media file of zero length. e.g. a youtube video link
; See https://drupal.org/node/2121031
projects[uuid][patch][] = "https://drupal.org/files/uuid.uuid_core_inc.patch"
projects[uuid][patch][] = "https://drupal.org/files/issues/uuid-1390708-13-uuid-field-insert.patch"
projects[uuid][patch][] = "https://drupal.org/files/issues/uuid-2235947-03-replicate-compatibility.patch"

projects[varnish][subdir] = "contrib"
projects[varnish][version] = "1.0-beta2"

projects[views][subdir] = "contrib"
projects[views][version] = "3.10"

projects[views_bulk_operations][subdir] = "contrib"
projects[views_bulk_operations][version] = "3.2"

projects[views_data_export][subdir] = "contrib"
projects[views_data_export][version] = "3.0-beta7"

projects[views_isotope][subdir] = "contrib"
projects[views_isotope][version] = "1.0-beta2"
projects[views_isotope][patch][] = "http://cgit.drupalcode.org/views_isotope/patch/?id=d26702d998d84a09492369fe9457037664726e28"

projects[views_load_more][subdir] = "contrib"
projects[views_load_more][version] = "1.2"

projects[webform][subdir] = "contrib"
projects[webform][version] = "4.0-beta3"
projects[webform][patch][] = "modules/custom/spire_webform/webform-force-string-numbers-in-exports2.patch"
projects[webform][patch][] = "modules/custom/spire_webform/fix-conditional-select-show-hide-issue-26540.patch"
projects[webform][patch][] = "http://www.drupal.org/files/issues/webform_name_length-342722.patch"

projects[webform_ajax][subdir] = "contrib"
projects[webform_ajax][version] = "1.1"
projects[webform_ajax][patch][] = "http://drupal.org/files/webform_ajax-webform-4.x-support-2102029.patch"
; Custom patch for Spire to change webform_ajax to enable ajax click event on the previous button
projects[webform_ajax][patch][] = "modules/custom/spire_webform/webform_ajax-previous-button-ajax-fix.patch"

; Unable to get a speific snapshot of the dev version of webform_encrypt from drupalcode.org :(
projects[webform_encrypt][subdir] = "contrib"
projects[webform_encrypt][version] = "1.x-dev"
projects[webform_encrypt][patch][] = "http://drupal.org/files/issues/webform_encrypt-decryption_empty_value_check-1727930-2_0.patch"
projects[webform_encrypt][patch][] = "http://drupal.org/files/issues/webform_encrypt-decrypt_on_submission_load_remove_theme_results_table-1730734-6.patch"
; Custom patch for Spire to change webform_encrypt to support webform v4.0 array structure changes
projects[webform_encrypt][patch][] = "modules/custom/spire_webform/spire-webform-webform_4.0_compatibility_new.patch"

projects[webform_validation][subdir] = "contrib"
projects[webform_validation][version] = "1.5"

projects[workbench_access][subdir] = "contrib"
projects[workbench_access][version] = "1.2"

; Need bleeding edge to get features integration.
projects[workbench_moderation][subdir] = "contrib"
projects[workbench_moderation][type] = "module"
projects[workbench_moderation][download][type] = "git"
projects[workbench_moderation][download][url] = "http://git.drupal.org/project/workbench_moderation.git"
projects[workbench_moderation][download][revision] = "a90378de5b1aea2b095ff5613eea44f55947f514"
projects[workbench_moderation][patch][] = "http://drupal.org/files/issues/workbench_moderation-2237021-01.patch"
projects[workbench_moderation][patch][] = "http://drupal.org/files/issues/workbench_moderation-entitymalformed-1919706-3.patch"
projects[workbench_moderation][patch][] = "https://drupal.org/files/issues/1330562-workbench-moderation-moderate-cache-clear-26.patch"
projects[workbench_moderation][patch][] = "modules/testing_content/test_content_workflow/SPIRE-Workbench_Moderation-Change-Watchdog-notice-on-success-to-info.patch"

; We need the dev version of wysiwyg for compatibility with ckeditor >= 4.x,
projects[wysiwyg][subdir] = "contrib"
projects[wysiwyg][type] = "module"
projects[wysiwyg][download][type] = "git"
projects[wysiwyg][download][url] = "http://git.drupal.org/project/wysiwyg.git"
projects[wysiwyg][download][revision] = "57d814ceaeb59ef53639c100f57c77ac6458bf59"

libraries[ckeditor][download][type] = "get"
libraries[ckeditor][download][url] = "http://download.cksource.com/CKEditor/CKEditor/CKEditor%204.3.2/ckeditor_4.3.2_full.tar.gz"

libraries[jquery.isotope][download][type] = "get"
libraries[jquery.isotope][download][url] = "https://github.com/metafizzy/isotope/archive/v2.0.0.tar.gz"

libraries[plupload][download][type] = "get"
libraries[plupload][download][url] = "https://github.com/moxiecode/plupload/archive/v1.5.8.zip"

projects[xmlsitemap][subdir] = "contrib"
projects[xmlsitemap][version] = "2.0-rc2"

; Other Libraries (alphabetical order please)
; ==============================================================================

