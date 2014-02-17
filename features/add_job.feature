Feature: add a job
 
  As a people want to share
  So that I can share a job with other users
  I want to add new job of company are open to internship to Monkey Banana.

Background: movies have been added to database

  

  And  I am on monkeybanana home page

Scenario: Try to add all fill

When I fill in "company name" with "Samart Corporation"
And When I fill in "Province" with "Bangkok"
And When I fill in "Position" with "Programmer"
And when I fill in "Qualification" with "Bachelor of Engineering"
And When I fill in "Link" with "www.samartcorp.com"
And I press "Save"

Then I should see be on the MonkeyBanana page
Then I should see "Samart Corporation"
And I should see "Programmer"
#when I follow Samart Corporation

Then I should be on the Detail page
And I should see "Samart Corporation"
And I should see "Programmer"
And I should see "Bachelor of Engineering"
And I should see "www.samartcorp.com"

Scenario: Try to add not all fill

I press "Save"
Then I should be on the Error page
