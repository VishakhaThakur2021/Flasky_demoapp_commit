*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${searchbox}    xpath://input[@placeholder='Search for songs by artist or title']
${searchtab}    xpath://button[contains(@type,'submit')]
${title}    xpath://a[@aria-label='yousician songs home page']//*[local-name()='svg']
${accept}    xpath://*[@id="onetrust-accept-btn-handler"]
*** Keywords ***
Input Search Text and Click Search

    Input Text    ${searchbox}    ${SearchText}
    sleep    2s
    Click Button    ${accept}
    Wait Until Page Contains Element    ${searchtab}
    Click Button    ${searchtab}



