*** Settings ***
Documentation  This is some basic info about the whole test suite
Library  SeleniumLibrary

*** Keywords ***
Begin Web Test
    Open Browser                about:blank                 chrome

Go to Web Page
    Load Page
    Verify Page Loaded

Load Page
    Go To                       http://www.amazon.com

Verify Page Loaded
    Wait Until Page Contains    Your Amazon.com

Search for Product
    Enter Search Term
    Submit Search
    Verify Search Completed

Enter Search Term
    Input Text                  id:twotabsearchtextbox      ferrari 458

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
    Begin Web Test
    Go to Web Page
    Search for Product
    End Web Test
