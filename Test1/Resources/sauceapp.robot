*** Settings ***
Library           SeleniumLibrary
Resource        ./PO/Login.robot
Resource        ./PO/Products.robot

*** Variables ***

*** Keywords ***
Verify Login Page
    Login.Open the given URL
    Login.Verify login Page
   
Enter the correct credentials and Login
    Login.Open the given URL 
    Login.Enter the valid username field
    Login.Enter the valid Password field
    Login.Click on the login button

Verify Products Page
    Login.Open the given URL 
    Login.Enter the valid username field
    Login.Enter the valid Password field
    Login.Click on the login button
    Products.Verify Products Page
    

Add Products to cart
    Login.Open the given URL 
    Login.Enter the valid username field
    Login.Enter the valid Password field
    Login.Click on the login button
    # Sleep    5s  
    
    Products.Add Sauce Labs Backpack Product to cart
    # Sleep    10s  
    Products.Filter price low to high
    # Sleep    2s  
    Products.Add to cart first product after filter
    Sleep    5s 

    
    