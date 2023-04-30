import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";

//Given('that I am on the start page', () => {
//  cy.visit('/');
//});

Given('that i am in the search bar field', () => {
  // Goto the start page
  cy.visit('/');
});

When('input {string} in the search bar', (searchItem) => {
  // Type the letter from our feature file in the search field
  cy.get('#search').type(searchItem);
});

Then('I should see {string} in the result list', (productName) => {
  // Grab a h2, check that it contains the product name
  // and then "go up" to the product div that the h2 is inside
  // and check that the product is visible
  cy.get('div.product h2')
    .contains(productName)
    .parentsUntil('div.product')
    .should('be.visible');
});

