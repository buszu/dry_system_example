# frozen_string_literal: true

module Example
  module Repos
    class Base
      include Import['persistence.db']
    end
  end
end
