Description: IMDB First Task
					 
Scenario:  Login
Given I am on the main application page
When I click on element located `By.xpath(//a[contains(.,'Sign In')])`
When I click on element located `By.xpath(//a[contains(.,'Sign in with IMDb')])`
When I enter `${Email}` in field located `By.xpath(//input[@id='ap_email'])`
When I enter `${Password}` in field located `By.xpath(//input[@id='ap_password'])`
When I click on element located `By.xpath(//input[@id='signInSubmit'])`
Then the page with the URL 'https://www.imdb.com/?ref_=login' is loaded
And field located `By.xpath(//span[contains(.,'Ilya')])` exists

Scenario: Search
Given I am on the main application page
When I enter `How to train your dragon` in field located `By.xpath(//input[@id='suggestion-search'])`
When I click on element located `By.xpath(//button[@id='suggestion-search-button'])`
Then the page with the URL 'https://www.imdb.com/find?q=How+to+train+your+dragon&ref_=nv_sr_sm' is loaded

Scenario: Open movie
When I click on element located `By.xpath((//a[contains(@href, '/title/tt0892769/?ref_=fn_al_tt_1')])[2])`

Scenario: Adding to Watchlist
When I click on element located `By.xpath(//button[contains(.,'Add to Watchlist')])`

Scenario: Go to Watchlist
When I click on element located `By.xpath(//a[contains(@href, '/list/watchlist?ref_=nv_usr_wl_all_0')])`

Scenario: Sort and Export
When I click on element located `By.xpath(//select[@id='lister-sort-by-options'])`
When I click on element located `By.xpath(//select[@id='lister-sort-by-options']/option[@value='ALPHA'])`
When I click on element located `By.xpath(//a[contains(@href, '/list/ls083440678/export')])`
