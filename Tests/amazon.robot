*** Settings ***
Documentation   This is some basic info about the whole test suite
Library         SeleniumLibrary
Test Setup      Begin Web Test
Test Teardown   End Web Test

*** Variables ***
${BROWSER} = chrome
${URL} = http://www.amazon.com
${SEARCH_TERM} = ferrari 458

*** Keywords ***
Begin Web Test
    Open Browser                about:blank                 ${BROWSER}

Go to Web Page
    Load Page
    Verify Page Loaded

Load Page
    Go To                       ${URL}

Verify Page Loaded
    Wait Until Page Contains    Your Amazon.com

Search for Product
    Enter Search Term
    Submit Search
    Verify Search Completed

Enter Search Term
    Input Text                  id:twotabsearchtextbox      ${SEARCH_TERM}
    
Submit Search
    Click button                xpath://*[@id="nav-search"]/form/div[2]/div/input

Verify Search Completed
    Wait Until Page Contains    results for "ferrari 458"

End Web Test
    Close Browser

*** Test Cases ***
User can access amazon.com
    [Documentation]             This is som basic info about the test
    [Tags]                      Test 1
    Go to Web Page

User can conduct a search
    [Documentation]             This is som basic info about the test
    [Tags]                      Test 2
    Go to Web Page
    Search for Product
