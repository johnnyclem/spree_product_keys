SpreeProductKeys
================

Simple product key activation and validation for Spree Commerce (not ready for production).

Installation
------------

Add spree_product_keys to your Gemfile:

```ruby
gem 'spree_product_keys'
```

Bundle your dependencies and run the installation generator:

```shell
bundle
bundle exec rails g spree_product_keys:install
```

Testing
-------

Be sure to bundle your dependencies and then create a dummy test app for the specs to run against.

```shell
bundle
bundle exec rake test_app
bundle exec rspec spec
```

When testing your applications integration with this extension you may use it's factories.
Simply add this require statement to your spec_helper:

```ruby
require 'spree_product_keys/factories'
```

Copyright (c) 2013 John Clem, released under the MIT License