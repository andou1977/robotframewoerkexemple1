*** Settings ***
Library  SeleniumLibrary
Library    RPA.RobotLogListener
*** Variables ***
${browser}      chrome
${url}      http://www.practiceselenium.com/practice-form.html


*** Test Cases ***
Get All Links form Website
     Lunch Browser
     ${LinkCount}=  Get Element Count  xpath://a
     log to console     ${LinkCount}

     @{items}   Create List
      FOR  ${i}    IN RANGE    1   ${LinkCount}+1
      ${linkText}=   Get Text    xpath:(//a)[${i}]
      log to console  ${linkText}
      END
     Close All Browsers


*** Keywords ***
Lunch Browser
    Open Browser     ${url}     ${browser}
    Maximize Browser Window
