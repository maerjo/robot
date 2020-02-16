*** Settings ***
Documentation  This is some basic info about the whole test suite
Library  SeleniumLibrary

*** Test Cases ***
User can access amazon.com
    [Documentation]             This is som basic info about the test
    [Tags]                      Test 1
    Open Browser                about:blank     chrome
    Go To                       http://www.amazon.com
    Wait Until Page Contains    Your Amazon.com
    Close Browser