@AZLC-1407
Feature: AZULCRM Log in feature
  User Story :
  As a user, I should be able to log in


  Background: log in page feature
    Given users on the login page

#  1-All users can log in with valid credentials
#  (We have 3 types of users such as HR user, Marketing user, Helpdesk user).
  @AZLC-1442
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
  @AZLC-1443
  Scenario Outline: error message should be displayed for invalid credentials
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
  @AZLC-1444
  Scenario Outline: error message should be displayed for empty credentials
    When users type username "<username>"  as a "<userType>"
    And users type password "<password>"
    And users click to the sign in button
    Then users see the empty "<login message>" displayed

    Examples:
      | userType  | username                       | password | login message               |
      | HR        |                                | UserUser | Please fill out this field |
      | MARKETING | marketing99@cybertekschool.com |          | Please fill out this field |
      | HELPDESK  |                                |          | Please fill out this field |


#  4-User land on the ‘Get Password’ page after clicking on the "Forgot your password?" link
  @AZLC-1445
  Scenario: users can go to get password page
    When users click forgot your password link
    Then User land on the "Get Password" page



#  5-User can see "Remember Me" link exists and is clickable on the login page
  @AZLC-1446
  Scenario: user can see "Remember Me" link exists and is clickable
    When users check remember link exists
    Then User should see the remember me link is clickable

#  6-User should see the password in bullet signs by default
  @AZLC-1447
  Scenario: User should see the password in bullet signs
    When users type password "password"
    Then users should see the password in bullet signs

#  7- Verify if the ‘Enter’ key of the keyboard is working correctly on the login page.
  @AZLC-1448
  Scenario Outline: users should check ‘Enter’ key of the keyboard is working correctly
    When users type username "<username>"  as a "<userType>"
    And users type password "<password>"
    And users hit enter to login
    Then users on the dashboard page

    Examples:
      | userType | username               | password |
      | HR       | hr1@cybertekschool.com | UserUser |


#  8- All users can see their own usernames in the profile menu, after successful login
  @AZLC-1449
  Scenario Outline: users can see their own usernames in the profile menu
    When users type username "<username>"  as a "<userType>"
    And users type password "<password>"
    And users click to the sign in button
    Then users can see their own "<profile usernames>" in the profile menu

    Examples:
      | userType  | username                       | password | profile usernames |
      | HR        | hr1@cybertekschool.com         | UserUser | Cate Nimal        |
      | MARKETING | marketing99@cybertekschool.com | UserUser | Lionel Messi      |
      | HELPDESK  | helpdesk1@cybertekschool.com   | UserUser | Cristiano Ronaldo |
