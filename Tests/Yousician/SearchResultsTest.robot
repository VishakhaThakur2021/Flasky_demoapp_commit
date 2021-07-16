*** Settings ***
Documentation    Verifying the search results
Resource    ../Resources/PageObjects/CommonFunctionality.robot
Resource    ../Resources/PageObjects/HeaderPage.robot
Resource    ../Resources/PageObjects/SearchResultsPage.robot
Resource    ../Resources/PageObjects/Variables.robot

Test Setup    CommonFunctionality.Open the Browser
#Test Teardown    CommonFunctionality.Close the Browser

*** Variables ***

*** Test Cases ***
Searching for songs or title
    [Documentation]    This test case verifies the search results
    [Tags]    Functional

    HeaderPage.Input Search Text and Click Search
    #SearchResultsPage.Verify Search Results
    SearchResultsPage.Standard Sorting


