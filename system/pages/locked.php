<?php # Prevents direct script access
if(!defined('FRONT_URI')){require'../../../../system/inc/config.inc.php';header('Location:'.SITE_URL);exit;}
/**
 * Shadow
 *
 * An open source application development framework that streamlines
 * responsive e-ecommerce development for php 5.0.0 or newer
 *
 * @package        Shadow
 * @author         Super Amazing
 * @copyright      Copyright (c) 2010 - 2013, Super Amazing
 * @license        
 * @link           http://shadow.livesuperamazing.com
 * @since          Version 1.1.5
 * -----------------------------------------------------------------
 *
 * Locked page
 */
 
// --------------------------------------------------------------------------------

# includes header.php
app_header(); 

?>

<div class="row">
	<div class="twelve columns">
    	<h2>You're account is locked.</h2>
    </div><!-- end twelve columns -->
</div><!-- end row -->

<?php 
# includes footer.php
app_footer(); ?>