require 'selenium/webdriver'
require 'capybara/cucumber'

username = "meu_user".sub('@', '%40')
authkey = "minha_senha"
url = "http://#{username}:#{authkey}@hub.crossbrowsertesting.com/wd/hub"

#start_tunnel(username,authkey)

Capybara.register_driver 'selenium_remote_cctest'.to_sym do |app|
  caps = Selenium::WebDriver::Remote::Capabilities.new
  caps['name'] = 'First FF Test'
  caps['build'] = '1.0'
  caps['browserName'] = 'Firefox'
  caps['platform'] = 'Mac OSX 10.12'
  caps['screen_resolution'] = '1366x768'
  caps['record_video'] = 'true'
  caps['record_network'] = 'false'   

  Capybara::Selenium::Driver.new(app, :browser => :remote, :url => url, :desired_capabilities => caps)
end

Capybara.default_driver = 'selenium_remote_cctest'.to_sym
Capybara.app_host = "http://www.google.com"
Capybara.run_server = false
