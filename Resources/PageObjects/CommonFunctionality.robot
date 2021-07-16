*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Keywords ***
Open the Browser
    Open Browser    ${SiteUrl}    ${Browser}
#Close the Browser
 #   Close Browser