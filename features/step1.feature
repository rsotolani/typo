Feature: A non-admin cannot merge articles
  Background:
    Given the blog is set up
    And I am logged into the user panel

  Scenario: A non-admin cannot merge two articles
    Given I am on the new article page
    Then I should see "New article"
    And I am not an admin
    Then I should not see button "Merge With This Article"
