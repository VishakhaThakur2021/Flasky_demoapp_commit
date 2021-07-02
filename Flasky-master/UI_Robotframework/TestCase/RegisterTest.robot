*** Settings ***
Library   SeleniumLibrary
Resource    ../Resource/DemoAutoapp.robot
Resource    ../Variable/Variable.robot
Suite Setup    Suite Setup
Suite Teardown    Suite Teardown

*** Test Cases ***
User Registration
   [Tags]   Registering user
    #Open browser and go to URL
    #Enter login info and press submit
    Enter UserName     ${Username}
    Enter Password     ${Password}
    Enter FirstName    ${FirstName}
    Enter LastName     ${LastName}
    Enter Phone        ${Phone}
    Click Submit
    log to console    Registration is done for the user
    #Fill the user details
    Enter UserName     ${Username}
    Enter Password     ${Password}
    Click login
    log to console    Successfully loged in
    #User details displayed
    Verify User information
    Verify User Details   ${Username}     ${FirstName}    ${LastName}    ${Phone}
    log to console    User is Registered
