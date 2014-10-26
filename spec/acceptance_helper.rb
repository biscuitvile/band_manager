require 'rails_helper'

require 'capybara'
require 'capybara/dsl'
require 'capybara/rails'

RSpec.configure do |config|
  config.after(:each) { Capybara.reset_sessions! }
end
