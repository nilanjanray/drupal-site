<?php
/**
 * @file
 * Enables modules and site configuration for a drop_enterprise site installation.
 */

/**
 * Implements hook_form_FORM_ID_alter() for install_configure_form().
 *
 * Allows the profile to alter the site configuration form.
 */
function drop_enterprise_form_install_configure_form_alter(&$form, $form_state) {
  //Pre-populate the site name with the server name.
  $form['site_information']['site_name']['#default_value'] = $_SERVER['SERVER_NAME'];


}


/**
* Implements hook_install_taks().
*/

/*

function drop_enterprise_install_tasks() {

  include_once('libraries/profiler/profiler_api.inc');
  $tasks = array(
    'profiler_install_profile_complete' => array(),
    'drop_enterprise_profiler_setup' => array(
      'display_name' => st('Profiler set-up configuration'),
      'display' => TRUE,
      'type' => 'normal',
    ),
   'drop_enterprise_menu_define_items' => array(
      'display_name' => st('Setup menu items'),
      'display' => TRUE,
      'type' => 'normal'
    ),
    'drop_enterprise_create_roles' => array(
      'display_name' => st('Setup default roles'),
      'display' => TRUE,
      'type' => 'normal'
    ),
    'drop_enterprise_create_users' => array(
      'display_name' => st('Setup default users'),
      'display' => TRUE,
      'type' => 'normal'
    ),


     
  );
  return $tasks;
}
*/

/**
* Profiler Integration.
*/

!function_exists('profiler_v2') ? require_once('libraries/profiler/profiler.inc') : FALSE;
profiler_v2('drop_enterprise');
