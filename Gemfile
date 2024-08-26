source "https://rubygems.org"

ruby "3.1.6"

gem "rails", "~> 7.2.1"
gem "sprockets-rails"
gem "pg", ">= 1.2"
gem "puma", ">= 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem 'rack-cors'
gem "stimulus-rails"
gem "jbuilder"
gem "bootsnap", require: false

group :development, :test do
  gem "brakeman", require: false
  gem "rubocop-rails-omakase", require: false
end

group :development do
  gem "web-console"
  gem "error_highlight", ">= 0.6.0"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end
