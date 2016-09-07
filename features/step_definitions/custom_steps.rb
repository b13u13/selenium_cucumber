require 'selenium-cucumber'


# Do Not Remove This File
# Add your custom steps here
# $driver is instance of webdriver use this instance to write your custom code

=begin

Then(/^I should logged in$/) do
	verify_login
end

def verify_login
	sign_out_link = $driver.find_element(:xpath, ".//*[@id='header']/div[1]/a[2]")
	if sign_out_link.text != "Sign Out"
		raise "Invalid login"
	else
		puts "User logged in successfully"
	end		
end
=end

Given(/^I open login page$/) do
  step %[I navigate to "https://afr.productengine.com"]
end

Given(/^I enter my email as "([^"]*)"$/) do |email|
  step %[I enter "#{email}" into input field having id "username"]      
end

Given(/^I enter my pass as "([^"]*)"$/) do |pass|
  step %[I enter "#{pass}" into input field having id "password"]
end

When(/^I click on sign in button$/) do
  step %[I click on element having xpath "//*[@id="content"]/form/fieldset/div/button/span"]
end

When(/^wait few second$/) do
	step %[I wait for 3 sec]
end

Then(/^I should get logged in$/) do
  step %[element having xpath ".//*[@id='header']/div[1]/a[2]" should have text as "Sign Out"]
end