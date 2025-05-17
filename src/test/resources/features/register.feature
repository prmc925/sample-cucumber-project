@Register
Feature: Register

  @author_Amit
  Scenario: User should create account successfully
    Given I am on homepage
    When I click on register link
    And I enters following users details
      | Jay  | Vaghani    | jay@gmail.com  | 07878451263 | Harrow |
      | Amit | Kathrotiya | amit@gmail.com | 07878451285 | Luton  |
      | Aum  | Vaghani    | aum@gmail.com  | 07878454585 | Harrow |
    Then registration successful