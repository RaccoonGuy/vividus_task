Composite: When I fill $UEmail and $UPassword in the Log In form
When I click on element located `By.xpath(//a[@href = '/login'])`
When I enter `<UEmail>` in field located `By.xpath(//input[@id='user'])`
When I click on element located `By.xpath(//input[@id='login'])`
When I enter `<UPassword>` in field located `By.xpath(//input[@id='password'])`
When I click on element located `By.xpath(//button[@id='login-submit'])`
When I wait until element located `By.xpath(//h2[text()='Most popular templates'])` appears
Then the page with the URL 'https://trello.com/senchy/boards' is loaded