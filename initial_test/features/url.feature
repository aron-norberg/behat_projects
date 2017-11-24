Feature: render
	In order to see the web page
	As a user
	I need to be able to load the web page

	Background:
		Given I am on "en-us/products"

	Scenario: Load the url
		Then I should see "Product Categories"

