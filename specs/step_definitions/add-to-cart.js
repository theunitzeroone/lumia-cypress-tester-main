import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";

Given('that I am on the start page', () => {
  cy.visit('/');
});

let searchedFor;
let searchItem;

When('That I have searched for {string}', (searchTerm) => {
  searchedFor = searchTerm;
  cy.get('#search').type(searchTerm);
});

When('I click the buy button {string} time', (clickCount) => {
  for (let i = 1; i <= +clickCount; i++) {
    cy.get('.product h2')
      .contains(searchedFor)
      .parents('.product')
      .find('button').contains('Köp')
      .click();
  }
});

Then('{string} {string} should be added to the cart', (quantity, productName) => {
  cy.get('#cart li')
    .contains(productName)
    .contains(quantity + 'st')
    .should('have.length', 1);
});




When('I search for {string}', (searchTerm) => {
  searchItem = searchTerm;
  cy.get('#search').type(searchTerm);
});

When('click buy {string} times', (clickCount) => {
  for (let i = 1; i <= +clickCount; i++) {
    cy.get('.product h2').contains(searchItem)
      .parents('.product')
      .find('button').contains('Köp')
      .click();
  }
});

Then('the price total should be correct', () => {
  let collected = [];
  cy.get('#cart li')
    .contains(searchItem)
    .find('span').each(span => {
      collected.push(+span.text().replace(/\D/g, ''));
      if (collected.length === 3) {
        let [perPiece, quantity, rowSum] = collected;
        expect(perPiece * quantity).to.equal(rowSum);
      }
    });
});