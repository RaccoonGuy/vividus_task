Description: PreCondition

Scenario: Log In
Given I am on the main application page
When I fill $Email and $Password in the Log In form

Scenario: API for vividus
Given I am on the main application page
Given request body: 
{
  "name": "vividus",
  "prefs_permissionLevel": "private",
  "prefs_selfJoin": false,
  "defaultLists": false,
  "prefs_background": "lime",
  "token": "a6d3c23bd3b0a0ac0b0b778d5728609df56e721d5c0763381fe5877231fc0d74"
}
When I set request headers:
|name					|value												|
|Content-Type			|application/json									|
|accept					|application/json, text/javascript, */*; q=0.01		|
When I issue a HTTP POST request for a resource with the URL 'https://trello.com/1/boards?key=b78c7b3fe3c763546a9713e27f3f3a12'
Then the response code is equal to '200'
When I refresh the page
Then field located `By.xpath(//span[@class="board-tile-fade"])` exists


