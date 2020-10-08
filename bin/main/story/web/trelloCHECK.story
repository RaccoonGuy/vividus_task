Description: TEST

Scenario: Log In
Given I am on the main application page
When I fill $Email and $Password in the Log In form

Scenario: UI validation
Given I am on the main application page
When the condition '#{eval("<class>"=="e_nLus13su0ui_")}' is true I do
|step																								|
|When I click on element located `By.xpath(//h1[text()='<text>'])`									|
|Then the text '<text>' exists																		|
When the condition '#{eval("<class>"=="board-tile-fade")}' is true I do
|step																						|
|When I click on element located `By.xpath(//div[text()='<text>'])`							|
|Then the text '<text>' exists																|

Examples:
|text						|class				|
|Project Management			|e_nLus13su0ui_		|
|Kanban Template			|e_nLus13su0ui_		|
|Simple Project Board		|e_nLus13su0ui_		|
|Remote Team Hub			|e_nLus13su0ui_		|
|vividus					|board-tile-fade	|
|Create new board			|board-tile mod-add	|