Feature: Login Feature
  In Order to perform successful login
  As a User
  I have to enter correct username and password

  @sanity @author_jay
  Scenario: User should navigate to login page successfully
    Given I am on homepage
    When I click on login link
    Then I should navigate to login page successfully

  @sanity @regression
  Scenario: User should log in successfully with valid credentials
    Given I am on homepage
    When I click on login link
    And I enter email "primepass@yahoo.com"
    And I enter password "abc123"
    And I click on login button
    Then I should log in successfully

  Scenario Outline: Verify the error message with invalid credentials
    Given I am on homepage
    When I click on login link
    And I enter email "<email>"
    And I enter password "<password>"
    And I click on login button
    Then I should see the error message "<errorMessage>"
    Examples:
      | email                   | password | errorMessage                                                                                |
      | abcd123sdfgd@gmail.com  | xyz123   | Login was unsuccessful. Please correct the errors and try again.\nNo customer account found |
      | xyz123fdsgjfd@gmail.com | abc123   | Login was unsuccessful. Please correct the errors and try again.\nNo customer account found |
      | adfafasdfdgdf@gmail.com | xyz123   | Login was unsuccessful. Please correct the errors and try again.\nNo customer account found |