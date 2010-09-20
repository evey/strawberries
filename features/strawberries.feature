Feature: Live
  In order to live
  people
  want to be able to eat strawberries
 
  Scenario: Eating strawberries
    Given a strawberry that is "blue"
    When I go to the homepage
    Then I should see "There is 1 strawberry"
    When I follow "eat the blue strawberry"
    Then I should see "Strawberry eaten!"
 
  Scenario: Change my strawberry before eat
    Given a strawberry that is "black"
    When I go to the homepage
    Then I should see "There is 2 strawberry"
    When I follow "Edit"
    And I fill in "Color" with "green"
    And I press "Update Strawberry"
    Then I should see "Strawberry's color changed."
    When I go to the homepage
    Then I should see "There is 2 strawberry"
    When I follow "eat the green strawberry"
    Then I should see "Strawberry eaten!"