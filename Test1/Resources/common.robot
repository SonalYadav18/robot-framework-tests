*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}        chrome
# ${URL}            https://www.saucedemo.com/

*** Keywords ***
Begin Web Test
    Open Browser        about:blank        ${BROWSER} 
    

End Web Test
...    Close Browser