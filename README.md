# tztemplate

Python script for generating Teadaze classes from template files. Base template are provided in the .teadaze directory.

#### Configuration
Three things are
* The .teadaze directory to exist in $HOME
* Environment variable $TZPATH to point to where teadaze is located
* TZPATH=/path/to/teadaze just before calling the script to set it on the command line
* Any template files to exist in $HOME/.teadaze

#### Usage

When running it will request a class name. The format is:

`class base`

Where:
* 'class'	The name of the new class
* 'base'	The name of the class from which to extend

It may also ask for a package or controller - just enter it's name. If the package doesn't exist it will create it; if the controller (for views) doesn't exist it will abort.

Enter '?' at any point to view options for the current stage

### templates

Templates are named after the @base extension; if you are extending Controller then the template will be Controller.tpl or MonkeyWrench it will be MonkeyWrench.tpl. Just add more template types to the $HOME/.teadaze directory if and when one is needed.


#### Syntax
First line is always the template type annotation - @model, @view, @controller or @plugin

Then the template which is normal PHP. However, there are two types of specific annotations:
* `@name` - the class name
* `@base` - the class that @name is extending

After that you can define your own annotations for adding variables. for example:

`@foo`

will request you define 'foo' during the generation of the filea nd it will then substitute the value; this allows repeated templates to be defined to specific needs.

Example for Controller.tpl:

```
@controller
<?php

class @nameController extends @base {

	public function init(array $target) {
		$this->setVariable('@foo', '@bar');
		
	}

	public function dynamic(array $target) {
		
	}
}
```

### License

Released under MIT License
