*** Settings ***
Library  Selenium2Library

*** Variables ***
${USERNAME_FIELD} =  id=txtUsername
${PASSWORD_FIELD} =  id=txtPassword
${LOGIN_BUTTON} =    id=btnLogin

*** Keywords ***
Load
    Go To  ${START_URL}

Verify Page Loaded
    Wait Until Page Contains  LOGIN Panel

Login With Valid Credentials
    [Arguments]  ${Username}  ${Password}
    Fill "Username" Field  ${Username}
    Fill "Password" Field  ${Password}
    Click "Sign In" Button

Fill "Username" Field
    [Arguments]  ${Username}
    Input Text  ${USERNAME_FIELD}  ${Username}

Fill "Password" Field
    [Arguments]  ${Password}
    Input Text  ${PASSWORD_FIELD}  ${Password}

Click "Sign In" Button
    Click Button  ${LOGIN_BUTTON}