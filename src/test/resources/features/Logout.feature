@AZLC-1418
Feature: AZULCRM Log out feature
  User Story :
  As a user, I should be able to log out


  Background: log out page feature
    Given users log in with valid credentials

#  1- The user can log out and ends up on the login page.
  Scenario: user can log out and ends up on the login page
    When user can log out
    Then user ends up on the login page

#  2- The user can not go to the home page again
#  by clicking the step back button after successfully logging out.

  Scenario: user can not go to the home page again by clicking the step back button
    When user can log out
    Then user can not go to the home page by clicking the step back button



#  3- The user must be logged out if the user close the open tab
#  (all tabs if there are multiple open tabs)

  Scenario: user must be logged out if the user close the open tab
    When user close the open tabs
    Then user must be logged out