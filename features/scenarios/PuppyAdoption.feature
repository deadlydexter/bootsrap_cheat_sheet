Feature: Using the Puppy Adoption Feature

  @AdoptingOnePuppy
  Scenario: Adopting one puppy

  As a puppy lover
  I want to adopt one puppy
  So puppy can chew my furniture

    Given I am on the puppy adoption site
    When I click the first View Details button
    And I click the Adopt Me button
    And I click the Complete the Adoption button
    And I enter "Samy" in the name field
    And I enter "123 Main Street" in the address field
    And I enter "samy@example.com" in the email field
    And I select "Credit card" from the pay with dropdown
    And I click the Place Order button
    Then I should see "Thank you for adopting a puppy!"



  @AdoptingTwoPuppy
  Scenario: Adopting two puppies

  As a puppy lover
  I want to adopt two puppies
  So they can chew all my furniture

    Given I am on the puppy adoption site
    When I click the first View Details button
    And I click the Adopt Me button
    And I click the Adopt Another Puppy button
    And I click the second View Details button
    And I click the Adopt Me button
    And I click the Complete the Adoption button
    And I enter "Samy" in the name field
    And I enter "123 Main Street" in the address field
    And I enter "samy@example.com" in the email field
    And I select "Credit card" from the pay with dropdown
    And I click the Place Order button
    Then I should see "Thank you for adopting a puppy!"

  @ValidateCartItems
  Scenario: Validate cart with one puppy

  Once Items are added to cart
  I want to validate elements on the cart

    Given I am on the puppy adoption site
    When I click the first View Details button
    And I click the Adopt Me button
    Then I should see "Benchy" as the name for line item 1
    And I should see "$45.00" as the subtotal for line item 1
    And I should see "$45.00" as the cart total


  @AdoptingPuppyWithDiffPayments
  Scenario Outline: Adopting two puppies using different payment options

  As a User
  I want to adopt puppies
  and complete checkout using different payment options

    Given I am on the puppy adoption site
    When I click the first View Details button
    And I click the Adopt Me button
    And I click the Adopt Another Puppy button
    And I click the second View Details button
    And I click the Adopt Me button
    And I click the Complete the Adoption button
    And I enter "<name>" in the name field
    And I enter "<address>" in the address field
    And I enter "<email>" in the email field
    And I select "<pay_type>" from the pay with dropdown
    And I click the Place Order button
    Then I should see "Thank you for adopting a puppy!"
    Examples:
      | name   | address      | email             | pay_type       |
      | Samy   | 123 Main St  | samy@example.com  | Credit card    |
      | Dexter | 555 South St | dex@mail.com      | Check          |
      | John   | 234 Leandog  | john@somemail.com | Purchase order |