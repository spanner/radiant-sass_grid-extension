#Sass Grid#

This is a very simple extension that sassifies the [960 grid system](http://960.gs/) and makes its styles available both as classes and as sass mixins. Right now it's experimental but it ought to work. 

##Usage##

Put this at the top of a sass file:

	@import 960.sass

And then you can get grid styles in various ways. These have the same effect:

In html:

	<div id="something" class="grid_6 prefix_1">...</div>

In sass:

	#something
	  +grid(6)
	  +prefix(1)
	
Depending on which features of the system you use, you may also want your layout to bring in `/stylesheets/ie960.css`.

##Requirements##

Nothing is actually required. If you want to use it with SnS you need my [fork of the sns_sass_filter extension](http://github.com/spanner/radiant-sns-sass-filter-extension) to get the include paths right, and you need to set the `SnS.sass_directory` config item to 'stylesheets/sass' (or just move the 960.sass file to somewhere else).

If you're using paperclipped, the migration included here will define a set of asset sizes like:

* `grid_6` matches the inner box size of a six column div, which is 460px
* `grid_6_square` is the same but cropped square
* `grid_6_bg` matches the *outer* box size of a six column div (which is 480px) and is suitable for using as a background where you want contained text to align with the grid.

If you're not using paperclipped, it'll define them anyway.

##Installation##

	git submodule add git://github.com/spanner/radiant-sass_grid-extension.git vendor/extensions/960gs
	rake radiant:extensions:sass_grid:update 

##Compatibility##

This should just work with radiant 0.9, but it requires a more recent version of sass than is included with radiant 0.8.1. You can make it work with a bit of careful tinkering:

	# sudo gem install haml
	# cd /path/to/radiant/gem
	# rm -rf vendor/plugins/haml
	# haml --rails .
	
This will replace the vendored haml with a stub that uses the gem instead and will always be up to date. There is no guarantee that this will not break something in radiant.

## Bugs and comments

[Github issues](http://github.com/spanner/radiant-sass_grid-extension/issues), please, or for little things an email or github message is fine.

## Author and copyright

* Copyright spanner ltd 2010.
* Derived from the css in the 960 grid system, copyright Nathan Smith, released under GPL & MIT licenses.
* Contact will at spanner.org

