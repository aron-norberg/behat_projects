Feature: render
	In order to see the web page
	I need to be able to load the web page 
	And the appropriate content should be visible

	Background: 
		Given I am on "en-us/products"
		
	# URL #
	Scenario: Does The page render with URL provided?
		Then the response status code should be 200
		Then print current URL
	
	Scenario: Does page render via top navigation?
		When I follow css ".top-lvl-products a"
		Then the response status code should be 200

		#TODO :: having a problem with target="_blank"
		#When I follow css ".top-lvl-fluke-connect a"
		#Then the response status code should be 200

		When I follow css ".top-lvl-solutions a"
		Then the response status code should be 200

		When I follow css ".top-lvl-training a"
		Then the response status code should be 200

		When I follow css ".top-lvl-support a"
		Then the response status code should be 200

		When I follow css ".top-lvl-where-to-buy a"
		Then the response status code should be 200

	# Title # 	
	Scenario: Is there are a page title?

		Then the page title and h1 should be the same
		Then check "h1" is in correct language
		#Then the h1 element should be formatted as an h1 
		Then the "h1" element should be title cased

	Scenario: Is the page in the correct language?
		Then check ".pane-content p" is in correct language

	#TODO: Scenario: Is h1 tag formatted correctly? ## 6 ONLY ##

	# TOC # 

	#TODO: Scenario: Are the images filled?

	#TODO: Scenario: If there is a missing image, is it populated with image not found?

	#TODO: Scenario: Is the text below the image in the correct language? 		

	#TODO: Scenario: Do the images/links match the top nav?

	#TODO: Scenario: Do the images/links match the left nav?

	#TODO: Scenario: Does the image and text link open the same item?

	#TODO: Scenario: Is the spacing correct for the text links? ...clarification?

	#TODO: Scenario: Do the image/text links open with the correct target?

	#TODO: Scenario: Does the text underline when overing over an image? (IT SHOULD NOT!!!) ## 6 ONLY ##

	#TODO: Scenario: Does the text underline when overing over text? (IT SHOULD!!!) ## 6 ONLY ##

	# Header/Footer #

	#TODO: Scenario: Is there a header with navigation?

	#TODO: Scenario: Is it in the correct language?

	#TODO: Scenario: Is there a left navigation?

	#TODO: Scenario: Is it in the correct language?

	#TODO: Scenario: Is there a footer with navigation?

	#TODO: Scenario: Is it in the correct langauge?

	# SEO # 

	Scenario: Is there a meta title?
		Then I should see "*asdf" in the "meta" element

	Scenario: Is the footer in the correct language
		Then check ".slogan" is in correct language

	#TODO: Scenario: Is the meta title formatted Correctly? "Display Title | IG Commerce"

	#TODO: Scenario: Is the meta title less than 60 characters in total?

	#TODO: Scenario: Is there a meta description?

	#TODO: Scenario: Is it in the correct language?

	#TODO: Is the Meta description less than 160 characters in total?
























