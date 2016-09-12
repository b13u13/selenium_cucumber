Feature: AFR login page validate
        Validate login page
 
 Scenario: Validate elements on login page
 	Given I open login page
 	And I see page title as "AFR: Login"
 	And I see page header as "Access your online reports:"
 	And I see email input field with id as "username"
 	And I see password input filed with id as "password"
 	And I see forgot password link with text "Forgot your password?"
 	And I see unchecked check-box with id "rememeberMe"
 	And I see text as "Keep me logged in until I sign out"
 	And I see login button


Scenario: Invalid login
	Given I open login page	
	And I enter invalid login as "test@login.com" in login input field with id as "username"
	And I enter invalid password as "111111" in password input field with id as "password"
	When I click on Sign in button
	And I wait for 1 sec
	Then I see error message