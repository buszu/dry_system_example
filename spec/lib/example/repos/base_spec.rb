# frozen_string_literal: true

require 'example/repos/base'

RSpec.describe Example::Repos::Base do
  let(:repo) { described_class.new }
  let(:test_db_name) { 'dev_meeting_2021_07_14_example_test' }

  it 'has sequel db as a dependency' do
    expect(repo.db).to be_a(Sequel::Database)
    expect(
      repo.db.select(Sequel.function(:current_database)).to_a.first[:current_database]
    ).to eq(test_db_name)
  end
end
