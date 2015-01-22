@view
<?php

class @nameView extends \Teadaze\@base {

	public function init() {

	}
	
	public function loadTemplate()
	{
		return $this->includeTemplate('@name');
	}
}
