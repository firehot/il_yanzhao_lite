source 'http://rubygems.org'

gem 'rails', '3.0.3'
gem 'mysql2','0.2.7'
gem "will_paginate", "~> 3.0.pre2"
gem "devise",'1.1.5'
gem "cancan",'1.5.0'
#表单中的树形结构选择
gem 'acts_as_tree',:git => 'git://github.com/parasew/acts_as_tree.git'
#form 显示组件
gem "validation_reflection"
gem 'formtastic', '~>1.2.3'
#state_machine
gem 'state_machine'
gem 'inherited_resources', '1.1.2'
gem 'inherited_resources_views'
gem 'dynamic_form'
gem 'show_for'
gem 'fastercsv'
#uuid generator
gem 'uuid'
gem 'factory_girl_rails', '1.0'
gem 'easy_http_cache'
gem "meta_search"
#js and css compressor
gem "jammit"
gem "yui-compressor"
gem "default_value_for","~>1.0.4"
gem "jquery_notify_bar","~>0.0.4"

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

# gem 'sqlite3-ruby', :require => 'sqlite3'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
gem 'capistrano'

# To use debugger
# gem 'ruby-debug'

# Bundle the extra gems:
# gem 'bj'
# gem 'nokogiri'
# gem 'sqlite3-ruby', :require => 'sqlite3'
# gem 'aws-s3', :require => 'aws/s3'

# Bundle gems for the local environment. Make sure to
# put test-only gems in this group so their generators
# and rake tasks are available in development mode:
group :development do
#  gem 'annotate-models', '1.0.4'
  gem 'jquery-rails'
  gem "bullet"
  #windows下运行需要
  #gem "win32-open3"
end
group :development, :test do
  gem 'rspec-rails','~>2.4.1'
  gem 'web-app-theme', '>= 0.6.2'
  gem 'i18n_generators'
end
group :test do
  gem 'rspec','~>2.4.0'
  gem 'spork','0.9.0.rc4'
end
