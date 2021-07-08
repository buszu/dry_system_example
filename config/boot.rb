# frozen_string_literal: true

ENV['EXAMPLE_ENV'] ||= 'development'

require 'bundler'
Bundler.setup(:default, ENV['EXAMPLE_ENV'])
