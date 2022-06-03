# frozen_string_literal: true

require 'rspec'

require 'bundler'
Bundler.require

require 'multi_process'

Dir[File.expand_path('spec/support/**/*.rb')].sort.each {|f| require f }

RSpec.configure do |config|
  # ## Mock Framework
  #
  # If you prefer to use mocha, flexmock or RR, uncomment the appropriate line:
  #
  # config.mock_with :mocha
  # config.mock_with :flexmock
  # config.mock_with :rr

  # Run specs in random order to surface order dependencies. If you find an
  # order dependency and want to debug it, you can fix the order by providing
  # the seed, which is printed after each run.
  #     --seed 1234
  config.order = 'random'

  # Raise error when using old :should expectation syntax.
  config.raise_errors_for_deprecations!
end
