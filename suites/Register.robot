*** Settings ***
Documentation       Register test cases
Library             SeleniumLibrary
Resource            ../pageObjects/Base.robot
Resource            ../pageObjects/RegisterPage/Register.robot
Test Setup          Base.Open Chrome Browser
Test Teardown       Close Browser


*** Test Cases ***
User Should Be Able To See Register.
    [Documentation]       Test to verify that user should be able to see Register
    Navigate To Url Homepage
    Verify that home page is visible successfully
    Click on Signup/Login button
    Verify New User Signup is visible
    Enter name in the Field Register Form                   name=${name}
    Enter email address in the Field Register Form          email=${email}
    Click 'Signup' button
    Verify that 'ENTER ACCOUNT INFORMATION' is visible
    Click Radio Button Title
    Enter password in the Field Account Information         password=${password}
    Select date of Birth in the Field Account Information
    Select checkbox 'Sign up for our newsletter!'
    Select checkbox 'Receive special offers from our partners!'
    Enter First name in the Field Address Information       firstname=${firstname}
    Enter Last name in the Field Address Information        lastname=${lastname}
    Enter Company in the Field Address Information          company=${company}
    Enter Address in the Field Address Information          address=${address}
    Enter Address 2 in the Field Address Information        address=${address2}   
    Select Country in the Field Address Information
    Enter State in the Field Address Information            state=${state}
    Enter City in the Field Address Information             city=${city}
    Enter Zipcode in the Field Address Information          zipcode=${zipcode}
    Enter Mobile Number in the Field Address Information    mobilephone=${mobilephone}
    Click Create Account Button
    Verify that 'ACCOUNT CREATED!' is visible
    Click 'Continue' button
    Verify that 'Logged in as username' is visible
    # Click Delete Account
    # Verify that 'ACCOUNT DELETED!' is visible and click 'Continue' button