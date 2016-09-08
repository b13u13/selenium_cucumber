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

Given(/^I see page title as "([^"]*)"$/) do |title|
  step %[I should see page title as "#{title}"]
end

Given(/^I see page header as "([^"]*)"$/) do |header|
  step %[element having xpath "(.//*[@id='content']/div/h1)" should have text as "#{header}"] 
end

Given(/^I see email input field with id as "([^"]*)"$/) do |email|
  step %[element having id "#{email}" should be present]
end

Given(/^I see password input filed with id as "([^"]*)"$/) do |pass|
  step %[element having id "#{pass}" should be present]
end

Given(/^I see forgot password link with text "([^"]*)"$/) do |forgot_link|
  step %[link having text "#{forgot_link}" should be present]
end

Given(/^I see unchecked check\-box with id "([^"]*)"$/) do |checkbox_id|
  step %[checkbox having id "#{checkbox_id}" should be unchecked]
end

Given(/^I see text as "([^"]*)"$/) do |keep_me_test|
  step %[element having xpath "(.//*[@id='content']/form/fieldset/label[3]/span[1])" should have text as "#{keep_me_test}"]
end

Given(/^I see login button$/) do
  step %[element having xpath "(.//*[@id='content']/form/fieldset/div/button/span)" should be present]
end  