SpreeGridFeed
=============

I would NOT use this yet while I am tweaking.  Adds /products.xml and /t/taxon.xml feeds.  Warning, it was designed for [Alarm Grid] (http://www.alarmgrid.com), so I make no guarantees it will work for your store.

Example
=======

Pretty easy, just add it to your gemfile:

  gem 'spree_grid_feed', :git => 'git://github.com/ehoch/spree_grid_feed.git'
  
Bundle install and done.


Testing
-------

Be sure to bundle your dependencies and then create a dummy test app for the specs to run against.

    $ bundle
    $ bundle exec rake test_app
    $ bundle exec rspec spec

Copyright (c) 2012 Eric Hochberger, released under the New BSD License
