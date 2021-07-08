# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) { |repo_name| "https://github.com/#{repo_name}" }

ruby '2.7.4'

gem 'dry-system', '~> 0.19'
gem 'dry-types', '~> 1.4'
gem 'sequel_pg', '~> 1.14', require: 'sequel'

group :development, :test do
  # gem 'factory_bot', '~> 6.1'
  gem 'pry', '~> 0.14'
  gem 'rspec', '~> 3.10'
end

group :development do
  gem 'rubocop', '~> 1.18', require: false
  gem 'rubocop-performance', '~> 1.11', require: false
end

group :test do
  gem 'database_cleaner-sequel', '~> 2.0'
  # gem 'webmock', '~> 3.13'
end
