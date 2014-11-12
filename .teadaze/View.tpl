@view
<?php

class @nameView extends @base {

	public function init() {

	}
	
	public function loadTemplate()
	{
		return $this->includeTemplate('@name');
	}
}
