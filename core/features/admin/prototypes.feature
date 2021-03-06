Feature: Admin visiting prototypes

  Scenario: Visiting admin prototypes page
    Given 2 prototypes exist
    And I go to the admin home page
    When I follow "Products"
    When I follow "Prototypes"
    Then I should see listing prototypes tabular attributes

  @javascript
  Scenario: Visiting admin prototypes page to create new record
    When I go to the admin home page
    When I follow "Products"
    When I follow "Prototypes"
    When I follow "new_prototype_link"
    Then async I should see "New Prototype" within "#new_prototype"
    When I fill in "prototype_name" with "male shirts"
    When I press "Create"
    Then I should see "Successfully created!"
    #Then edit destroy #=> FIXME
