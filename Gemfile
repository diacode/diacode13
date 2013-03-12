source 'https://rubygems.org'

gem 'rails', '3.2.13.rc1'
gem 'sqlite3'
gem 'jquery-rails'
gem 'bootstrap-sass'
gem 'font-awesome-rails'
gem 'haml-rails'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

group :production do
  gem 'therubyracer', :platforms => :ruby
  gem 'exception_notification', '2.6.1'
end

group :development do
  gem 'thin'
  gem 'capistrano'
  gem 'capistrano-shared_file', git: 'https://github.com/teohm/capistrano-shared_file.git'
  gem 'quiet_assets'
end
