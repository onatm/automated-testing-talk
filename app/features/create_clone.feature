Feature:
  As a user I should be able to create a clone

Background:
  Given I am on SQL Clone Dashboard

Scenario: Navigate to 'Clone Destination' page
  When I click on "Clone" button
  Then I should see "Clone Destination" heading