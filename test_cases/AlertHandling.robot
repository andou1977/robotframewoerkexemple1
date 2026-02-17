*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}      http://testautomationpractice.blogspot.com/
#Handle
*** Test Cases ***
To Perform Select Option with Drop Down list
# ici dans les dates il ya un bug dans l application
    Lunch Browser
    Clear Element Text    id=start-date
    Press Key    id=start-date   01/02/2026
    Clear Element Text    id=end-date
    Press Key    id=end-date     16/02/2026
    Click Element    css:.submit-btn
    ${thetext}=   Get Text    id=result
    Should Be Equal   ${thetext}    You selected a range of 334 days.

    Scroll Element Into View    xpath://*[@id="HTML9"]/div[1]/button
    Click Element    xpath://*[@id="HTML9"]/div[1]/button
    sleep   2

#   # handle alert    accept      # for ok
#    # Handle Alert    dismiss   # for cancel
#
#
#
    Alert Should Be Present     I am an alert box!
    Close All Browsers



*** Keywords ***
Lunch Browser
    Open Browser     ${url}     ${browser}
    Maximize Browser Window


