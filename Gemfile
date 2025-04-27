source 'https://rubygems.org'

gem 'rails', '~> 8.0.2'

gem 'puma', '~> 6.0'  # Updated for Rails 8 compatibility
gem 'importmap-rails' # Required for Rails 8 default setup
gem 'stimulus-rails'  # For modern frontend interactivity
gem 'turbo-rails'     # For faster navigation and updates

# Updated from sass-rails to sassc-rails (recommended for Rails 8)
gem 'sassc-rails'

# Removed Uglifier; instead, use esbuild or importmap for JS bundling
# Removed CoffeeScript (deprecated)

gem 'jquery-rails'
gem 'jbuilder', '~> 2.5'

# Use Stripe for payment processing
gem 'stripe'

# Use Twitter Bootstrap library for front-end UI and layout
gem 'bootstrap-sass', '~> 3.4', '>= 3.4.1'

# Use Hirb gem for better console data presentation
gem 'hirb', '0.7.3'

# Use Devise for user authentication
gem 'devise', '~> 4.9', '>= 4.9.3'

group :development, :test do
  gem 'byebug', platform: :mri
end

group :development do
  gem 'sqlite3', '~> 2.0' # Updated for Rails 8
  gem 'web-console'
  gem 'listen', '~> 3.3'  # Updated for compatibility
#  gem 'spring'
#  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :production do
  # Use the PostgreSQL gem
  gem 'pg', '1.4'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

ruby '3.2.2'