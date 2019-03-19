Feature: Write Articles
  As a blog administrator
  In order to group the articles by theme
  I want to be able to create and edit categories in the blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Create a new category
    Given I am on the new category page
    When I fill in "category_name" with "book"
    And I press "Save"
    Then I should see "book"

  Scenario: Edit an existing category
    Given I am on the existing category page
    When I follow "Edit"
    And I fill in "category_keywords" with "apple"
    And I press "Save"
    Then I should see "apple" 