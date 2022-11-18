*** Settings ***
Documentation       Login test cases
Library             SeleniumLibrary
Resource            ../pageObjects/LoginPage/Login.robot
Resource            ../pageObjects/Base.robot
Test Setup          Base.Open Chrome Browser
Test Teardown       Close Browser

*** Test Cases ***
Login User with correct email and password
    [Documentation]         Test to verify that user should be able to Login with valid data
    Navigate To Home Page
    Verify that home page is visible successfully
    Click on 'Signup / Login' button
    Verify 'Login to your account' is visible
    Enter correct email address and password        email=${VALID_EMAIL}    password=${PASSWORD}
    Click 'login' button
    Verify that 'Logged in as username' is visible
    Click 'Delete Account' button
    Verify that 'ACCOUNT DELETED!' is visible

Login User with incorrect email and password
    [Documentation]         Test to verify that user should be able to Login with invalid data
    Navigate To Home Page
    Verify that home page is visible successfully
    Click on 'Signup / Login' button
    Verify 'Login to your account' is visible
    Enter incorrect email address and password        email=${INVALID_EMAIL}    password=${PASSWORD}
    Click 'login' button
    Verify error 'Your email or password is incorrect!' is visible