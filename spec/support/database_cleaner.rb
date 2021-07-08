# frozen_string_literal: true

require 'database_cleaner-sequel'
DatabaseCleaner[:sequel].db = Example::Application['persistence.db']

RSpec.configure do |config|
  config.before(:suite) do
    DatabaseCleaner[:sequel].strategy = :transaction
    DatabaseCleaner[:sequel].clean_with(:truncation)
  end

  config.before(:each) do
    DatabaseCleaner[:sequel].start
  end

  config.append_after(:each) do
    DatabaseCleaner[:sequel].clean
  end
end
