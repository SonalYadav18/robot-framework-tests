*** Settings ***
Library        SeleniumLibrary


*** Variables ***
${URL}            https://www.saucedemo.com/
${USERNAME}       standard_user
${PASSWORD}       secret_sauce

*** Keywords ***
Open the given URL
    Go To                ${URL} 

Verify login Page
    # Wait Until Element Is Visible    xpath=//div[@class='login_logo'] 
    ${login_verify}=     Get Text    xpath=//div[@class='login_logo'] 
    # Element Should Contain      xpath=//div[@class='login_logo']    Swag Labs   
    Should Contain     ${login_verify}    Swag Labs 

Enter the valid username field
    Input Text            xpath=//input[contains(@name,'user-name')]    ${USERNAME} 

Enter the valid Password field
    Input Password        xpath=//input[contains(@name,'password')]     ${PASSWORD} 

Click on the login button
    Click Button           xpath=//input[contains(@name,'login-button')] 