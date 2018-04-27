*** Settings ***
Documentation  Esta suite representa os testes do DEMOCENTER para a aplicação web OrangeHRM

Resource  ../Resources/Common.robot
Resource  ../Resources/OrangehrmApp.robot

Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

# robot -d Results Tests/orangehrm.robot

*** Variables ***
${BROWSER} =  firefox
${START_URL} =  http://opensource.demo.orangehrmlive.com/
${LOGIN_USER_ADMIN} =  admin
${LOGIN_PASSWORD_ADMIN} =  admin

*** Test Cases ***
Deve logar como admin
    OrangehrmApp.Login   ${LOGIN_USER_ADMIN}  ${LOGIN_PASSWORD_ADMIN}