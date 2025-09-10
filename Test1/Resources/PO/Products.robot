*** Settings ***
Library     SeleniumLibrary
*** Variables ***

*** Keywords ***
Verify Products Page
   ${verify_products}=    Get Text    //span[@class='title']
   Should Contain     ${verify_products}    Products


Add Sauce Labs Backpack Product to cart
   Click Button    xpath=//div[text()='Sauce Labs Backpack']//ancestor::div[@class='inventory_item_description']//button

Filter price low to high
   Select From List By Value    xpath=//select[@class='product_sort_container']    lohi

Add to cart first product after filter
   Click Button    xpath=//div[@class='inventory_list']//div[1]//button