Description: Vividus Task 2

GivenStories: story/web/PreCondition.story

Scenario: GUI Visual Testing
Given I am on the main application page
When I go to the relative URL '<URL_path>'
When I ${bline} baseline with `<baseline_img>`
Examples:
|URL_path		|baseline_img			|
|/senchy/boards	|Boards_page_baseline	|
|/senchy/cards	|Cards_page_baseline	|
|/home			|Home_page_baseline		|
|/senchy		|Profile_page_baseline	|
|/senchy/account|Settings_page_baseline	|

Scenario: UI validation
Given I am on the main application page
When the condition '#{eval("<class>"=="e_nLus13su0ui_")}' is true I do
|step																						|
|When I click on element located `By.xpath(//h1[text()='<text>'])`							|
|Then the text '<text>' exists																|
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

Scenario: Adding a task in table using expressions
Given I am on the main application page
When I click on element located `By.xpath(//ul[contains(.,'Create new board')]//div[text()="vividus"])`
When I initialize the SCENARIO variable `task` with value `#{generate(Witcher.quote)}`
When I click on all elements located `By.xpath(//span[@class="placeholder"])`
When I enter `${task}` in field located `By.xpath(//input[@name='name'])`
When I click on all elements located `By.xpath(//input[@value="Add List"])`
Then field located `By.xpath(//textarea[text()="${task}"])` exists

Scenario: Known issues
Given I am on the main application page
When I click on all elements located `By.xpath(//span[@class="pgEbaAFZBA0N5R"])`

Scenario: Visual check ignoring elements
Given I am on the main application page
When I ${bline} baseline with `Main_Ignore` ignoring:
|ELEMENT										|AREA				|
|By.xpath(//div[@class="content-all-boards"])	|					|

Scenario: Deleting of table
Given I am on the main application page
When I click on element located `By.xpath(//ul[contains(.,'Create new board')]//div[text()="vividus"])`
When I click on element located `By.xpath(//a[contains(.,'Show Menu')])`
When I click on element located `By.xpath(//a[contains(text(),'More')])`
When I click on element located `By.xpath(//a[contains(.,'Close Board')])`
When I click on element located `By.xpath(//input[@value="Close"])`
When I click on element located `By.xpath(//a[contains(.,'Permanently Delete Board')])`
When I click on element located `By.xpath(//input[@value="Delete"])`

