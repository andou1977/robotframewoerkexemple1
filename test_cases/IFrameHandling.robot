*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}      	https://seleniumhq.github.io/selenium/docs/api/java/index

*** Test Cases ***
To Perform To handle IFrame

    Lunch Browser
    Click Link   org.openqa.selenium.bidi.webextension
    sleep   1second
    Click Link   ExtensionBase64Encoded
    sleep   1second
    Click Link   xpath=//a[@class="member-name-link"]
    Close All Browsers



*** Keywords ***
Lunch Browser
    Open Browser     ${url}     ${browser}
    Maximize Browser Window


