<?php defined('INDEX') or die() and exit(); // Prevents direct script access
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
 * @since          Version 0.1.1 s5
 * -----------------------------------------------------------------
 *
 * Class
 */
 
// --------------------------------------------------------------------------------

/**
 * Class description
 * @since 0.1.1 s7
 * @author William Mosley, III <will@livesuperamazing.com>
 * 0 Arguments
 * 4 Methods
 */
class Error
{
	private $errorConstants = array(
        1       => 'Error',
        2       => 'Warning',
        4       => 'Parse error',
        8       => 'Notice',
        16      => 'Core Error',
        32      => 'Core Warning',
        256     => 'User Error',
        512     => 'User Warning',
        1024    => 'User Notice',
        2048    => 'Strict',
        4096    => 'Recoverable Error',
        8192    => 'Deprecated',
        16384   => 'User Deprecated',
        32767   => 'All'
    );

    public function __construct()
    {
        set_error_handler(array($this, 'errorHandler'));
        set_exception_handler(array($this, 'exceptionHandler'));
    }

    public function exceptionHandler( $exception )
    { 
		if( ENVIRONMENT != 'production' )
		{
			$message = $exception->getMessage().' [code: '.$exception->getCode().']'; 
			
			?>
			<div class="alert alert-warning hide-for-print"> 
				<?php echo $message; ?>
			</div>
			<?php 
		}
		else
		{
			?>
			<div class="alert alert-info hide-for-print"> 
				<?php echo 'We\'re sorry, an error occured.'; ?>
			</div>
			<?php 	
		}
	}
	
    public function errorHandler($errno, $errstr, $errfile, $errline)
    {
		if( ENVIRONMENT != 'production' )
		{
			$errString = (array_key_exists($errno, $this->errorConstants))
				? $this->errorConstants[$errno] : $errno; ?>
				
				<div class="alert alert-warning hide-for-print"> 
					<?php 
					$message = "<strong>".$errString.': '.$errstr."\n </strong>".
						
						'File: '.$errfile. ',  Line: '.$errline;
					echo str_replace(array("\r\n","\r","\n"),'</br>',$message);	
					 ?>
				</div>
			
			<?php error_log($errString.' ['.$errno.']: '.$errstr.' in '.$errfile.' on line '.$errline);
    	}
		else
		{
			?>
			<div class="alert alert-info hide-for-print"> 
				<?php echo 'We\'re sorry, an error occured.'; ?>
			</div>
			<?php 	
		}
	
	}	
 
} // end ClassName