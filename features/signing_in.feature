Feature: Signing in
<<<<<<< HEAD
  
=======

>>>>>>> 492a32513cf0a2428ce18f4cc64ccc76453e9bdc
  Scenario: Unsuccessful signin
    Given a user visits the signin page
    When he submits invalid signin information
    Then he should see an error message
<<<<<<< HEAD
  
=======

>>>>>>> 492a32513cf0a2428ce18f4cc64ccc76453e9bdc
  Scenario: Successful signin
    Given a user visits the signin page
      And the user has an account
    When the user submits valid signin information
    Then he should see his profile page
      And he should see a signout link