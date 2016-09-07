Feature: AFR login
        As a user I should able to login into AFR.
 
 Scenario: I login with valid credential
        Given I navigate to "https://afr.productengine.com"
        And I enter "afr@marchex.com" into input field having id "username"        
        And I enter "Alexandr0vSKY" into input field having id "password"
        When I click on element having xpath "//*[@id="content"]/form/fieldset/div/button/span"
        And I wait for 10 sec        
        #Then I should logged in
        Then element having xpath ".//*[@id='header']/div[1]/a[2]" should have text as "Sign Out"