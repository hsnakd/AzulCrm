@
Feature: AZULCRM Log in feature
  User Story :
  As a user, I should be able to log in


  Background: log in page feature
    Given users on the login page

#  1-All users can log in with valid credentials
#  (We have 3 types of users such as HR user, Marketing user, Helpdesk user).
  Scenario Outline: Log in with valid credentials
    When users type username "<username>"  as a "<userType>"
    And users type password "<password>"
    And users click to the sign in button
    Then users on the dashboard page

    Examples:
      | userType  | username                       | password |
      | HR        | hr1@cybertekschool.com         | UserUser |
      | MARKETING | marketing99@cybertekschool.com | UserUser |
      | HELPDESK  | helpdesk1@cybertekschool.com   | UserUser |

#  2-"Incorrect login or password." should be displayed for invalid
  #    1 - invalid username - valid password
  #    2 - valid username - invalid password
  #    3 - invalid username-invalid password

  Scenario Outline: Log in with invalid credentials
    When users type username "<username>"  as a "<userType>"
    And users type password "<password>"
    And users click to the sign in button
    Then users see the incorrect "<login message>" displayed

    Examples:
      | userType  | username                        | password     | login message               |
      | HR        | hr1000@cybertekschool.com       | UserUser     | Incorrect login or password |
      | MARKETING | marketing99@cybertekschool.com  | UserUser1000 | Incorrect login or password |
      | HELPDESK  | helpdesk1000@cybertekschool.com | UserUser1000 | Incorrect login or password |

#  3- "Please fill out this field" message should be displayed if the password or username is empty
  #    1 - empty username - valid password
  #    2 - valid username - empty password
  #    3 - empty username - empty password

  Scenario Outline: Log in with invalid credentials
    When users type username "<username>"  as a "<userType>"
    And users type password "<password>"
    And users click to the sign in button
    Then users see the empty "<login message>" displayed

    Examples:
      | userType  | username                       | password | login message               |
      | HR        |                                | UserUser | Incorrect login or password |
      | MARKETING | marketing99@cybertekschool.com |          | Incorrect login or password |
      | HELPDESK  |                                |          | Incorrect login or password |


#  4-User land on the ‘Get Password’ page after clicking on the "Forgot your password?" link

  Scenario: Log in with forgot user password
    When users click forgot your password link
    Then User land on the "Get Password" page



#  5-User can see "Remember Me" link exists and is clickable on the login page

  Scenario: Log in with forgot user password
    When users click remember me link
    Then User should see the remember me link is clickable

#  6-User should see the password in bullet signs by default

  Scenario: Log in with forgot user password
    When users type password "password"
    Then users should see the password in bullet signs

#  7- Verify if the ‘Enter’ key of the keyboard is working correctly on the login page.

  Scenario Outline: Log in with valid credentials
    When users type username "<username>"  as a "<userType>"
    And users type password "<password>"
    And users hit enter to login
    Then users on the dashboard page

    Examples:
      | userType  | username                       | password |
      | HR        | hr1@cybertekschool.com         | UserUser |


#  8- All users can see their own usernames in the profile menu, after successful login
  @wip
  Scenario Outline: Log in with valid credentials
    When users type username "<username>"  as a "<userType>"
    And users type password "<password>"
    And users click to the sign in button
    Then users can see their own "<profile usernames>" in the profile menu

    Examples:
      | userType  | username                       | password | profile usernames |
      | HR        | hr1@cybertekschool.com         | UserUser | Cate Nimal        |
      | MARKETING | marketing99@cybertekschool.com | UserUser | Lionel Messi      |
      | HELPDESK  | helpdesk1@cybertekschool.com   | UserUser | Cristiano Ronaldo |
