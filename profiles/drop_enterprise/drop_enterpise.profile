<?php
/**
 * @file
 * Enables modules and site configuration for a drop_enterpise site installation.
 */

/**
 * Implements hook_form_FORM_ID_alter() for install_configure_form().
 *
 * Allows the profile to alter the site configuration form.
 */
function drop_enterpise_form_install_configure_form_alter(&$form, $form_state) {
  // Pre-populate the site name with the server name.
  $form['site_information']['site_name']['#default_value'] = $_SERVER['SERVER_NAME'];
}

/**
* Implements hook_install_taks().
*/

function drop_enterpise_install_tasks() {
  $tasks = array(
    'drop_enterpise_profiler_setup' => array(
      'display_name' => st('Profiler set-up configuration'),
      'display' => TRUE,
      'type' => 'normal',
    ),

    /*'drop_enterpise_menu_define_items' => array(
      'display_name' => st('Setup menu items'),
      'display' => TRUE,
      'type' => 'normal'
    ),
    'drop_enterpise_create_roles' => array(
      'display_name' => st('Setup default roles'),
      'display' => TRUE,
      'type' => 'normal'
    ),
    'drop_enterpise_create_users' => array(
      'display_name' => st('Setup default users'),
      'display' => TRUE,
      'type' => 'normal'
    ),
    */ 
  );
  return $tasks;
}


/**
* Includes the profiler.
*/

function drop_enterpise_profiler_setup() {

  !function_exists('profiler_v2') ? require_once('libraries/profiler/profiler.inc') : FALSE;
  profiler_v2('yourprofile');

}


