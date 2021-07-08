# frozen_string_literal: true

require 'dry/system/components'
require_relative '../../lib/types'

Example::Application.boot(:settings, from: :system) do
  settings do
    key :database_url, Types::String.constrained(filled: true)
    key :example_env, Types::String.constrained(filled: true)
    key :example_value, Types::String.default('Hello')
  end
end
