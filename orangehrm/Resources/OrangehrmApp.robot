*** Settings ***
Resource  ../Resources/PO/Loginpage.robot

*** Keywords ***
Login
    [Arguments]  ${Username}  ${Password}
    Loginpage.Load
    Loginpage.Verify Page Loaded
    Loginpage.Login With Valid Credentials     ${Username}  ${Password}
