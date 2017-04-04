require 'capybara/cucumber'
require 'capybara-screenshot/cucumber'

Capybara.run_server = false
Capybara.default_max_wait_time = 3

Capybara.default_driver = :selenium
Capybara.javascript_driver = :selenium

Capybara.save_path = File.expand_path(File.join(File.dirname(__FILE__), "../../screenshots/"))