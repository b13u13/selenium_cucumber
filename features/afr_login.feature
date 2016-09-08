Feature: AFR login
        As a user I should able to login into AFR.
 
 Scenario: I login with valid credential
        Given I navigate to "https://afr.productengine.com"
        And I enter "afr@marchex.com" into input field having id "username"        
        And I enter "1221212121" into input field having id "password"
        When I click on element having xpath "//*[@id="content"]/form/fieldset/div/button/span"
        And I wait for 5 sec     
        Then element having xpath "//*[@id="content"]/div/div/div/text()" should have text as "Invalid eMail or password. Tip: Password is case-sensitive."