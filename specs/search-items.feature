Feature: Search for items in the shop
  As a user I want to be able to find products i can buy

  Background:
    Given that I am on the start page

  Scenario: Find "Taklampa" in the shop
    Given that i am in the search bar field
    When input "Taklampa" in the search bar
    Then I should see "Taklampa" in the result list

  Scenario: Find "Bordslampa" in the shop
    Given that i am in the search bar field
    When input "Bordslampa" in the search bar
    Then I should see "Bordslampa" in the result list

  Scenario: Find "Golvlampa" in the shop
    Given that i am in the search bar field
    When input "Golvlampa" in the search bar
    Then I should see "Golvlampa" in the result list

  Scenario: Find "Lampett" in the shop
    Given that i am in the search bar field
    When input "Lampett" in the search bar
    Then I should see "Lampett" in the result list

  Scenario: Find "Spotlight" in the shop
    Given that i am in the search bar field
    When input "Spotlight" in the search bar
    Then I should see "Spotlight" in the result list