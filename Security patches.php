Entity API
-------------

1) https://www.drupal.org/files/issues/entity-1788568-12-entity_metadata_wrapper_revisions.patch does not exist in latest version.
but this can go with the new version as well i guess.

2) https://raw.githubusercontent.com/computerminds/drupal-patches/master/entity_save_original.patch
Does not exist but can go with new version.

3) modules/custom/spire_page/entity-fix-bean-imports.patch
Does not exist in new version but can go with new version


Webform 
----------
1) https://www.drupal.org/files/issues/webform_name_length-342722.patch //can be removed.

Maxlength is null. //in new version of webform.components.inc
type is set to text in webform.install // in new version of webform.install
Change webform_component.name to text to allow for longer labels // is also present in new version

2) custom patch: //webform-force-string-numbers-in-exports2.patch
the first can go with the current version. but the second one (// Remove <script> tags, which mysteriously cause Excel not to import.) cannot go.
current patch:
-------------
@@ -21,7 +21,8 @@ class webform_exporter_excel_xlsx extends webform_exporter {
       if (empty($value) && strlen($value) === 0) {
         // Skip empty cells.
       }
-      elseif (is_numeric($value)) {
+      // CM Hack: Force numeric fields to be formatted as Strings in Excel.
+      elseif (FALSE && is_numeric($value)) {
         $output .= '<c r="' . $cell_position . '"><v>';
         $output .= $value;
         $output .= '</v></c>';

should be modified as:
---------------------
@@ -26,7 +26,8 @@ class webform_exporter_excel_xlsx extends webform_exporter {
      if (strlen($value) === 0) {
        // Skip empty cells.
      }
-	  elseif (is_numeric($value) && $value[0] !== '+') {
+	  // CM Hack: Force numeric fields to be formatted as Strings in Excel.
+     elseif (FALSE && is_numeric($value)) {
        $output .= '<c r="' . $cell_position . '"><v>';
        $output .= $value;
        $output .= '</v></c>';
      }


3) custom patch: //modules/custom/spire_webform/fix-conditional-select-show-hide-issue-26540.patch

current patch 
--------------
if (showComponent) {
-        $form.find('.' + ruleGroup['target']).find('.webform-conditional-disabled').removeAttr('disabled').removeClass('webform-conditional-disabled').end().show();
+        var elements = $form.find('.' + ruleGroup['target']).find('.webform-conditional-disabled');
+        elements.each( function() {
+          if (this.spireEnable) {
+            this.spireEnable();
+          }
+        });
+        elements.removeAttr('disabled').removeClass('webform-conditional-disabled').end().show();
+
+
       }
       else {
         $form.find('.' + ruleGroup['target']).find(':input').attr('disabled', true).addClass('webform-conditional-disabled').end().hide();

should be modified as 
-----------------------
var $target = $form.find('.' + ruleGroup['target']);
if (showComponent) {
      //$form.find('.' + ruleGroup['target']).find('.webform-conditional-disabled').removeAttr('disabled').removeClass('webform-conditional-disabled').end().show();
-      $targetElements = $target.find('.webform-conditional-disabled').removeClass('webform-conditional-disabled');
-      $.fn.prop ? $targetElements.prop('disabled', false) : $targetElements.removeAttr('disabled');
-      $target.show();
+      var elements = $target.find('.webform-conditional-disabled');
+      elements.each( function() {
+          if (this.spireEnable) {
+            this.spireEnable();
+          }
+        });
+        elements.removeAttr('disabled').removeClass('webform-conditional-disabled').end().show();
+
+
       }
       else {
         //$form.find('.' + ruleGroup['target']).find(':input').attr('disabled', true).addClass('webform-conditional-disabled').end().hide();
		 $targetElements = $target.find(':input').addClass('webform-conditional-disabled');

Not sure how these needs to be changed:
diff --git a/js/webform.js b/js/webform.js
index e33a28c..e3dde8c 100644
--- a/js/webform.js
+++ b/js/webform.js
@@ -156,7 +156,15 @@ Drupal.webform.conditionalCheck = function(e) {











