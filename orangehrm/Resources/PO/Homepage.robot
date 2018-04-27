*** Settings ***
Library  Selenium2Library

*** Variables ***


*** Test Cases ***
Verify "HomePage" Loaded
    Wait Until Page Contains  Welcome