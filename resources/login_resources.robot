*** Settings ***
Library   SeleniumLibrary

*** Keywords ***
Setup
    [Arguments]   ${app_url}    ${app_browser}
     open browser     ${app_url}    ${app_browser}
     maximize browser window

Closer
    Close Browser
    Close All Browsers

Input Email
       [Arguments]   ${email}
       Clear Element Text   id:Email
       Input Text   id:Email   ${email}

Input Password
        [Arguments]   ${password}
         Clear Element Text    id:Password
        Input Text   id:Password      ${password}

Click To Login Button
    Click Element   xpath=//button[@class="button-1 login-button"]

Click To Logout Button
    Click Link   Logout

Error Message Should Be Visible
    Page Should Contain    Login was unsuccessful

Dashboard Page Should Be Visible
    Page Should Contain     Dashboard