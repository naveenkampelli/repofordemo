Webform date submission:

Line 84 spire_webform.module (spire_profile/modules/custom/spire_webform)

if (isset($form['submission'])) {
        foreach ($form['submission'] as $key => &$component) {
          if (in_array($component['#type'], $component_types)) {
            $component['#datepicker'] = TRUE;
          }
        }
      }


Password reset and expiration mail

Spire_users.module (spire_profile/modules/custom/spire_users)

<?php
/**
 * @file
 * Drupal needs this blank file.
 */

/**
 * @global type $base_url
 * @return string Function to get the current environment
 */
function current_environment()
{
  global $base_url;
  $output= explode(".",drupal_substr($base_url, drupal_strlen('http://')));
  if(!empty($output)){
  if($output[0]=="www")
  {
    $env="LIVE";
  }
  else{
    $env=strtoupper($output[0]);
  }
  }
  else
  {
    $env='';
  }
  return $env;
  
}

/**
 * Implements hook_form_alter().
 */
function spire_users_form_alter(&$form, $form_state, $form_id) {

  // Set the default value of 'notify user of new account' to be true*/
  if ($form_id == 'user_register_form') {
    $form['account']['notify']['#default_value'] = TRUE;
  }
  // Set the default values for Password expiry email message*/
  if ($form_id == 'password_policy_admin_settings') {
  $env=  current_environment();
  $form['email']['password_policy_warning_subject']['#default_value']='Password expiration warning for !username in '.$env;
  $form['email']['password_policy_warning_body']['#default_value']='Dear !username,

Your password for the Content Management System will expire in less than !days_left day(s). 

This is to the  '.$env.' environment, please login here: !login_uri and then go to !edit_uri to change your password.


Kind regards,
!site Support Team';
  }
  // Set the default values for Password reset email message*/
  if ($form_id =='user_admin_settings'){
    $env=current_environment();
    $form['email_password_reset']['user_mail_password_reset_subject']['#default_value']='Password Recovery information for [user:name] in '.$env;
    $form['email_password_reset']['user_mail_password_reset_body']['#default_value']='Dear [user:name],

You are receiving this email because you requested a password reset for the Spire CMS in '.$env.' environment

It\'s easy to get back into your account. Just click on this link or copy and paste it into your browser. [user:one-time-login-url]

This link will take you to a page that lets you set a new password. It will expire after a day if you don’t use it - but don’t worry as you can always request another one the same way you requested this one. 

If you continue to have problems accessing the CMS, please contact 777 or report your issue online with IT Service Point, making sure to specify that your issue relates to edfnergy.com and should go to the Spire Infosys team. 

For more general questions or guidelines, visit MyCampus for all the latest guides to the CMS. Or if you have access to Yammer, the Spire Content Community Workspace is a great forum to read and post questions, comments or tips and discuss them with other CMS users. The group moderator will also quickly answer any questions you post in here, so it\'s quick and easy.  


Kind regards,
[site:name] Support Team';
  }
}
 
//Facebook Feed

Line 145 of spire_social_media.block spire_profile/modules/custom/spire_social_media 

Change the ‘feed’ to ‘posts’

//Blue Header for background image tile

Line 43 profiles/spire_profile/themes/custom/spire/sass/modules/_tile-background-image.scss

.tile.tile-type-background-image.title-style-blue-block,
.tile.tile-type-background-image.title-style-orange-block {
  > .height-equalizable > .tile-inner > .text-wrapper >
  header {
    position: absolute;
    width:100% //Added 100% to the tile
  }
