*** Settings ***
Library  Selenium2Library

Resource  ../Resources/PO/Homepage.robot

*** Variables ***
${USERNAME_FIELD} =  id=txtUsername
${PASSWORD_FIELD} =  id=txtPassword
${LOGIN_BUTTON} =    id=btnLogin
${LOGIN_MESSAGE} =   id=spanMessage
${WELCOME_MESSAGE}=  id=welcome

*** Keywords ***
Load
    Go To  ${START_URL}

Verify Page Loaded
    Wait Until Page Contains  LOGIN Panel

Login With Invalid Credentials
    [Arguments]  ${Username}  ${Password}?
    Fill "Username" Field  ${Username}
    Fill "Password" Field  ${Password}
    Click "Sign In" Button
    Message Should Be  ${LOGIN_MESSAGE}

Login With Valid Credentials
    [Arguments]  ${Username}  ${Password}
    Fill "Username" Field  ${Username}
    Fill "Password" Field  ${Password}
    Click "Sign In" Button
    Homepage.Verify "HomePage" Loaded

Fill "Username" Field
    [Arguments]  ${Username}
    Input Text  ${USERNAME_FIELD}  ${Username}

Fill "Password" Field
    [Arguments]  ${Password}
    Input Text  ${PASSWORD_FIELD}  ${Password}

Click "Sign In" Button
    Click Button  ${LOGIN_BUTTON}

Message Should Be
    Should Be Equal  "Username cannot be empty!"  ${LOGIN_MESSAGE}