Description: This is literally a trash can for testing methods and stuff u can skip it :D

Scenario: Log In
Given I am on the main application page
When I fill $Email and $Password in the Log In form

Scenario: Known Issues
Given I am on the main application page
When I click on all elements located `By.xpath(//span[@class="pgEbaAFZBA0N5R"])`
When I click on all elements located `By.xpath(//a[@data-test-id="header-member-menu-cards"])`

Scenario: Visual check ignoring elements
Given I am on the main application page
When I COMPARE_AGAINST baseline with `Main_Ignore` ignoring:
|ELEMENT										|AREA				|
|By.xpath(//div[@class="content-all-boards"])	|					|
