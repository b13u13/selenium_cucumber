Feature: AFR login
        As a user I should able to login into AFR.
 
 Scenario: I login with valid credential
 	Given I open login page
 	And I enter my email as "afr@marchex.com"
 	And I enter my pass as "Alexandr0vSKY"
 	When I click on sign in button
 	And wait few second
 	Then I should get logged in