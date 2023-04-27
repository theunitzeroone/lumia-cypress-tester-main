Feature: Add item(s) to cart
  As a user I want to be able to add products
  to the cart, so that I can buy them.

  Background:
    Given that I am on the start page

  Scenario Outline: Adding "<quantity>" "<product>" to the cart
    Given that I have searched for "<product>"
    When I click the buy button "<quantity>" time
    Then "<quantity>" "<product>" should be added to the cart

    Examples:
      | product    | quantity |
      | Bordslampa | 1        |
      | Bordslampa | 2        |
      | Golvlampa  | 1        |
      | Golvlampa  | 3        |

  Scenario:

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


Feature: Pay for items
  As a user I want to pay for the items in the cart

  Background:
    Given that I am on the start page

  Scenario:
    Given that i have "1" "Taklampa" in the cart
    When i click buy and fill out the required information
    Then i should get a buy confirmation

  Scenario:
    Given that i have "2" "Bordslampa" in the cart
    When i click buy and fill out the required information
    Then i should get a buy confirmation

  Scenario:
    Given that i have "1" "Golvlampa" in the cart
    When i click buy and fill out the required information
    Then i should get a buy confirmation

  Scenario:
    Given that i have "2" "Lampett" in the cart
    When i click buy and fill out the required information
    Then i should get a buy confirmation

  Scenario:
    Given that i have "1" "Spotlight" in the cart
    When i click buy and fill out the required information
    Then i should get a buy confirmation