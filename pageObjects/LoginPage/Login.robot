*** Settings ***
Documentation         Login related keyword
Resource              ../Base.robot
Variables             ../LoginPage/loginpage_locators.yaml

*** Variables ***
${LOGIN_URL}                https://app.happyhomes.id/login
${VALID_USERNAME}              masteradmin
${UNREGISTERED_USERNAME}       membuatmasteradmin
${INVALID_USERNAME}            membuatmasteradmin@coid
${PASSWORD}                    1234qwer

*** Keywords ***
Navigate To Login Page
    [Documentation]                         Keyword to Navigate user to Login Page
    Go To                                   ${LOGIN_URL}
    Maximize Browser Window

Verify Current Url Is Login Url
    [Documentation]                         Keyword to verify current url is login url
    Wait Until Location Contain             ${LOGIN_URL}

Verify Login Section Appears
    [Documentation]                         Keyword to verify login section appears
    Wait Until Element Is Visible           ${login_section}
    Element Should Be Visible               ${emailInput_loginSection}
    Element Should Be Visible               ${passwordInput_loginSection}
    Element Should Be Visible               ${forgotpassword_loginSection}
    Element Should Be Visible               ${signInButton_loginSection}