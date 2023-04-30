Feature: Add to cart
  as a user i want to be able to add products
  to the cart, so that I can buy them.

  Background: That I am on the home page
    Given that I am on the start page

  Scenario Outline: Adding "<quantity>" "<product>" to the cart
    When That I have searched for "<product>"
    And I click the buy button "<quantity>" time
    Then "<quantity>" "<product>" should be added to the cart

    Examples:
      | product    | quantity |
      | Bordslampa | 1        |
      | Bordslampa | 2        |
      | Bordslampa | 3        |
      | Golvlampa  | 1        |
      | Golvlampa  | 2        |


  Scenario: Check total value for "1" "Golvlampa"
    When I search for "Golvlampa"
    And click buy "1" times
    Then the price total should be correct

  Scenario: Check total value for "5" "Golvlampor"
    When I search for "Golvlampa"
    And click buy "5" times
    Then the price total should be correct

  Scenario: Check total value for "4" "Spotlights"
    When I search for "Spotlight"
    And click buy "4" times
    Then the price total should be correct

  Scenario: Check total value for "3" "Taklampor"
    When I search for "Taklampa"
    And click buy "3" times
    Then the price total should be correct

  Scenario: Check total value for "2" "Bordslampor"
    When I search for "Bordslampa"
    And click buy "2" times
    Then the price total should be correct