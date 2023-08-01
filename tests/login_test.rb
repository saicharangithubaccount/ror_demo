# login_test_spec.rb
require 'selenium-webdriver'
require 'webdrivers'
require_relative '../page_objects/login_page'

describe 'Login functionality' do
  before(:all) do
    @driver = Selenium::WebDriver.for :remote, url: 'http://localhost:4444/wd/hub', desired_capabilities: :firefox
    @driver.manage.window.maximize
    @login_page = LoginPage.new(@driver)
  end

  after(:all) do
    @driver.quit
  end

  it 'logs in successfully with valid credentials' do
    @login_page.navigate_to_login_page
    @login_page.enter_username('Admin')
    @login_page.enter_password('admin123')
    @login_page.click_login_button
    # Add assertions here to verify successful login or any other functionality after login.
  end

end
