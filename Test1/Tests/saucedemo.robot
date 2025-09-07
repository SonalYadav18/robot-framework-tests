*** Settings ***
Documentation    This is for practice SauceLab Login Test
Library           SeleniumLibrary

*** Variables ***
${BROWSER}        chrome
${URL}            https://www.saucedemo.com/
${USERNAME}       standard_user
${PASSWORD}       secret_sauce

*** Test Cases ***
Valid Login
    Load the browser
    Open the given URL
    Enter the valid username field
    Enter the valid Password field
    Click on the login button
    Validate the logged in Page
    [Teardown]    Close Browser


*** Keywords ***
Load the browser
    Open Browser        about:blank        ${BROWSER} 

Open the given URL
    Go To                ${URL} 
Enter the valid username field
    Input Text            xpath=//input[contains(@name,'user-name')]    ${USERNAME} 

Enter the valid Password field
    Input Password        xpath=//input[contains(@name,'password')]     ${PASSWORD} 
Click on the login button
    Click Button           xpath=//input[contains(@name,'login-button')] 
Validate the logged in Page
    ${loginpass}=    Get Text    //span[@class='title']
    Should Contain    ${loginpass}    Products