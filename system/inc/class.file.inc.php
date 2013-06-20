<?php # Prevents direct script access
if(!defined('ROOT_URI')){require'config.inc.php';header('Location:'.SITE_URL);exit;}
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
 * Class
 */
 
// --------------------------------------------------------------------------------

/**
 * Class description
 * @since 1.1.7
 * @author William Mosley, III <will@livesuperamazing.com>
 * 0 Arguments
 * 0 Methods
 */
class Files
{
	 /**
 * Get File Extension Function
 *
 * This function gets file extensions from  the end path or file
 *
 * @package        Shadow   
 * @author         Super Amazing
 * @link
 * @since          Version 1.1.5
 * @dependencies   
 * @param          string  filename
 * @param          string  add dot
 * @return         string
 */
	function get_file_ext( $filename, $dot = '.' )
	{
		return $dot . pathinfo( $filename, PATHINFO_EXTENSION);
		
	} // end function get_file_ext( $filename )


 /**
 * Remove File Extension Function
 *
 * This function removes the file extension from a path or file
 *
 * @package        Shadow   
 * @author         Super Amazing
 * @link
 * @since          Version 1.1.5
 * @dependencies   
 * @param          string  filename
 * @return         string
 */
	function remove_file_ext( $filename )
	{
		# Get extension & append .
		$ext =  '.' . pathinfo( $filename, PATHINFO_EXTENSION);
		
		# String remove extension
		return str_replace( $ext, '', $filename);
		
	} // end function get_file_ext( $filename )


 /**
 * Add File Extension Function
 *
 * This function appends a given file size to original file
 * To allow for responsive calls
 * e.g. image.jpg -> image-100x100.jpg
 *
 * @package        Shadow   
 * @author         Super Amazing
 * @link
 * @since          Version 1.1.5
 * @dependencies   
 * @param          string  filename or path
 * @param          string  sixe
 * @param          OPTIONAL string  seperator
 * @param          OPTIONAL string  check file
 * @return         string
 */
	function add_file_ext( $filename, $size, $sep = '-', $check_file = false )
	{
		# Get extension & append .
		$ext =  '.' . pathinfo( $filename, PATHINFO_EXTENSION);
		
		# String remove extension
		$file_no_ext = str_replace( $ext, '', $filename);
		
		$new_file = $file_no_ext . $sep . $size . $ext;	
				
		if( $check_file )
		{
			# Check if new file exists
			if( file_exists( $new_file ) )
			{
				return $new_file;
				
			} else { return $filename; }
			
		} else { return $new_file; }
		
		
	} // end function get_file_ext( $filename )
 
} // end ClassName