Feature: An admin can merge articles
  As a blog administrator
  In order to share my thoughts with the world
  I want to be able to merge articles

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: An admin merge two articles
    Given I am on the new article page
    Then I should see "New article"
    And I should see button "Merge Articles"
    When I fill in "merge_with" with "001"
    And I press "Merge Articles"
    Then I should be on the new article page
    And I should see "Title can't be blank"
