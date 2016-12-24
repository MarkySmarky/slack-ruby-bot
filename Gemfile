source 'http://rubygems.org'

gemspec

gem ENV['CONCURRENCY'], require: false if ENV.key?('CONCURRENCY')
gem 'giphy', require: false if ENV.key?('WITH_GIPHY')

gem 'literate_randomizer'

group :test do
  gem 'slack-ruby-danger', '~> 0.1.0', require: false
end
