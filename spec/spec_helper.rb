require 'bundler/setup'
require 'rspec'
require 'pry'

Dir["#{Dir.pwd}/lib/**/*.rb"].each {|file| require file }

RSpec.configure do |config|
  config.order = :random

  config.expect_with :rspec do |expectations|
    expectations.syntax = :expect
  end

  config.mock_with :rspec do |mocks|
    mocks.syntax = :expect

    mocks.verify_partial_doubles = true
    mocks.verify_doubled_constant_names = true
  end
end
