This fork updates extension to work with Spree 0.70 and Rails 3.1. 

It also adds the ability to have multiple images per blog post. 

[BloggingSpree](http://github.com/sbeam/spree-blogging-spree/)
---------------

Originally forked from [paulcc/spree-blog](http://github.com/paulcc/spree-blog/), this extension intends to offer a more complete blogging solution for use within the Spree E-Commerce application. It currently consists of a blog, news archive, and a news archive widget written in jQuery.

See the [issue tracker](http://github.com/jaymendoza/spree-blogging-spree/issues) for future plans.


Installation
------------
Add to your Gemfile:
    gem 'spree_blogging_spree', :git => 'git://github.com/sbeam/spree-blogging-spree.git'

Run:
    bundle install
    rails g spree_blogging_spree:install
    rake db:migrate`

Compatibility
-------------

* Spree 0.70+

Dependencies
------------

* is_taggable_rails3 (requires a forked version of is_taggable because of named_scope issues)
* jQuery

Note about Rich Text Editors
----------------------------
Seems to be a lot of disagreement about which Rich Text Editor to include, if any. No need to fork just to include your favorite. Thanks to Deface, if you want TinyMCE for instance, just unroll the package in `/app/assets/javascripts/admin` and add an override like

    Deface::Override.new(:virtual_path => "layouts/admin",
                         :name => "tinymce_tag",
                         :insert_bottom => "[data-hook='admin_footer_scripts']",
                         :text => %(
                         
                         <%= javascript_include_tag "/assets/admin/tiny_mce/tiny_mce.js","/assets/admin/tiny_mce/jquery.tinymce.js"    %>

                         <script type="text/javascript"> 
                           /* fire up the TinyMCE */
                           $(document).ready(function() {
                             $('.editor').tinymce();
                           });
                         </script>),

                         :disabled => false)

Testing
-------

* shoulda
* factory_girl
* Spork

The included spec_helper.rb is configured for use with Spork due to Spree's extended loading time.

Following the lead of the Spree development team, all tests have been converted to shoulda from RSpec.

