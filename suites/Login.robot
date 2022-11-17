*** Settings ***
Documentation       Login test cases
Library             SeleniumLibrary
Resource            ../pageObjects/LoginPage/Login.robot
Resource            ../pageObjects/Base.robot
Test Setup          Base.Open Chrome Browser
Test Teardown       Close Browser

*** Test Cases ***
User Should Be Able To See Login Page
    [Documentation]         Test to verify that user should be able to see login page
    Navigate To Login Page
    Verify Login Section Appears

User Should Be Able To Login With Valid Data
    [Documentation]         Test to verify that user should be able to Login with valid data
    Navigate To Login Page
    Input User Email Address        user_email=${VALID_EMAIL}
    Input User Password Email       user_password=${PASSWORD}
    Click SignIn Button 
