# frozen_string_literal: true

require_relative 'boot'

require 'dry/system/container'
require 'dry/auto_inject'

module Example
  class Application < Dry::System::Container
    use :env, inferrer: -> { ENV.fetch('EXAMPLE_ENV').to_sym }

    configure do |config|
      config.root = File.expand_path('..', __dir__)

      config.component_dirs.add('lib')
    end
  end

  Import = Application.injector
end
