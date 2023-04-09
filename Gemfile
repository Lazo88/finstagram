# # A sample Gemfile
# source "https://rubygems.org"

# gem 'rake'
# gem 'activesupport'
# gem 'activerecord', '~> 4.2.0'

# gem 'sinatra'
# gem 'sinatra-contrib'
# gem 'sinatra-activerecord'

# gem 'puma'
# gem 'tux'

# group :development, :test do
#   gem 'pry'
#   gem 'shotgun'
#   gem 'sqlite3', '~> 1.3.6'
# end


#Depolyment version
source "https://rubygems.org"

gem 'puma'
gem 'rake'
gem 'activesupport'
gem 'activerecord', '< 6.1.0'
gem 'bcrypt'

gem 'sinatra', '~> 3.0.2'
gem 'sinatra-contrib'
gem 'sinatra-activerecord'

gem 'tux'
gem 'pry'

group :development, :test do
  gem 'shotgun'
  gem 'sqlite3', '~> 1.5.3'
end

group :production do
  gem 'pg'
end