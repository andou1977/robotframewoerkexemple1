*** Settings ***
Library  SeleniumLibrary
Library    OperatingSystem

*** Variables ***
${browser}      chrome
${url}      http://testautomationpractice.blogspot.com/
${document}   C:/Users/GENIUS/IdeaProjects/robotframewoerkexemple1/test_data/drag and drop.txt

*** Test Cases ***
To Perform Drag and Drop

    Lunch Browser
    drag and drop      id:draggable       id:draggable
    sleep    5
    ${gt}=   Get File   ${document}
    Should Be Equal As Strings    ${gt}    drag in drop me now !
    
    Choose File    id=singleFileInput    ${document}
    Sleep    5

    Close All Browsers

*** Keywords ***
Lunch Browser
    Open Browser     ${url}     ${browser}
    Maximize Browser Window


