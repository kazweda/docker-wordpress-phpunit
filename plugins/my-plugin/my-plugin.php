<?php
/**
 * Plugin Name:     My_Plugin
 * Plugin URI:      PLUGIN SITE HERE
 * Description:     PLUGIN DESCRIPTION HERE
 * Author:          YOUR NAME HERE
 * Author URI:      YOUR SITE HERE
 * Text Domain:     docker test
 * Domain Path:     /languages
 * Version:         0.1.0
 *
 * @package         Docker test
 */
class My_Plugin {
  public function __construct() {
    add_action( 'wp_footer', array($this, 'my_function') );
  }

  public function my_function() {
    echo $this->make_string();
  }

  public function make_string() {
    return 'hello world!!';
  }
}
new My_Plugin();
