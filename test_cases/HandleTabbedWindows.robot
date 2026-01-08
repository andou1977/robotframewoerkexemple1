*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}      http://demo.automationtesting.in/Windows.html

*** Test Cases ***
Handle Tabbed Windows

    Lunch Browser
    Click Element    xpath=//p[@class="fc-button-label"]
    Click Element    xpath://*[@id="Tabbed"]/a/button
    Click Element    xpath=//button[@class="btn btn-info"]
    Switch Window    NEW
    Scroll Element Into View    xpath=//a[contains(@class, "selenium-button") and contains(text(), "Read more")]
    Click Element    xpath=//a[contains(@class, "selenium-button") and contains(text(), "Read more")]
    Close All Browsers



*** Keywords ***
Lunch Browser
    Open Browser     ${url}     ${browser}
    Maximize Browser Window


