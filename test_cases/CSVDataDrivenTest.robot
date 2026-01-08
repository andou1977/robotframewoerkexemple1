#*** Settings ***
#Library   SeleniumLibrary
#Resource  ../resources/login_resources.robot
#Library  DataDriver     ../test_data/LoginData.csv
#
#Suite Setup  Setup    ${url}    ${browser}
#Suite Teardown  closer
#Test Template  Invalid Login
#
#
#*** Variables ***
#${browser}   chrome
#${url}      https://admin-demo.nopcommerce.com/
#
#
#*** Test Cases ***
#Login Test Case From Excel Sheet
#
#
#*** Keywords ***
#Invalid Login
#    [Arguments]  ${email}    ${password}
#    Input Email   ${email}
#    Input Password    ${password}
    Wait Until Element Is Visible    xpath=//button[@class="button-1 login-button"]    10s




    Click To Login Button
#    Error Message Should Be Visible







