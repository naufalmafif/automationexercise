*** Settings ***
Documentation       Logout test cases
Library             SeleniumLibrary
Resource            ../pageObjects/LogoutPage/Logout.robot
Resource            ../pageObjects/Base.robot
Test Setup          Base.Open Chrome Browser
Test Teardown       Close Browser

*** Test Cases ***
Logout User
    [Documentation]         Test to verify that user should be able to Logout with valid data
    Navigate To Home Page
    Verify that home page is visible successfully
    Click on 'Signup / Login' button
    Verify 'Login to your account' is visible
    Enter correct email address and password        email=${VALID_EMAIL}    password=${PASSWORD}
    Click 'login' button
    Verify that 'Logged in as username' is visible
    Click 'Logout' button
    Verify that user is navigated to login page