*** Settings ***
Library         SeleniumLibrary
Variables     ../Pageobject_WebElements/Locators.py

*** Keywords ***
Suite Setup
    Open My Browser    ${SiteUrl}    ${Browser}
Suite Teardown
    Close Browser
Open My Browser
    [Arguments]    ${SiteUrl}    ${Browser}
    open browser      ${SiteUrl}    ${Browser}
    Maximize Browser Window
Enter UserName
    [Arguments]    ${username}
    Wait Until Page Contains Element    ${txt_username}
    Input Text     ${txt_username}    ${username}
Enter Password
    [Arguments]    ${password}
    Wait Until Page Contains Element    ${txt_password}
    Input Text    ${txt_password}      ${password}
Enter FirstName
    [Arguments]    ${first_name}
    Wait Until Page Contains Element    ${txt_firstname}
    Input Text    ${txt_firstname}     ${first_name}
Enter LastName
    [Arguments]    ${last_name}
    Wait Until Page Contains Element    ${txt_lastname}
    Input Text     ${txt_lastname}     ${last_name}
Enter Phone
    [Arguments]    ${phone}
    Wait Until Page Contains Element    ${txt_phone}
    Input Text     ${txt_phone}     ${phone}
Click Submit
    Wait Until Page Contains Element    ${btn_submit}
    Click button    ${btn_submit}
Click login
    Wait Until Page Contains Element    ${login_tab}
    Click button    ${login_tab}
Verify User information
    Title Should Be    User Information - Demo App
Verify User Details
     [Arguments]    ${username}    ${first_name}    ${last_name}    ${phone}
    Table Row Should Contain       ${table_data}    2       ${username}
    Table Row Should Contain       ${table_data}    3       ${first_name}
    Table Row Should Contain       ${table_data}    4       ${last_name}
    Table Row Should Contain       ${table_data}    5       ${phone}

     log to console  verified all user details








