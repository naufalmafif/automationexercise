*** Settings ***
Documentation         Logout related keyword
Resource              ../Base.robot
Variables             ../LogoutPage/logoutpage_locators.yaml

*** Variables ***
${HOMEPAGE_URL}                http://automationexercise.com
${VALID_EMAIL}                 rafif@gmail.com
${PASSWORD}                    rafif


*** Keywords ***
Navigate To Home Page
    [Documentation]                         Keyword to Navigate user to Home Page
    Go To                                   ${HOMEPAGE_URL}
    Maximize Browser Window

Verify that home page is visible successfully
    [Documentation]                         Verify that home page is visible successfully
    Element Should Be Visible               ${logohomepage}

Click on 'Signup / Login' button
    [Documentation]                         Click on 'Signup / Login' button
    Click Element                           ${signuplogin_button}

Verify 'Login to your account' is visible
    [Documentation]                         Verify 'Login to your account' is visible
    Element Should Be Visible               ${login_section}

Enter correct email address and password
    [Documentation]                         Enter correct email address and password
    [Arguments]             ${email}        ${password}
    Input Text              ${id_email}     ${email}
    Input Text              ${id_password}  ${password}

Click 'login' button
    [Documentation]                          Click 'login' button
    Click Element                           ${login_button}

Verify that 'Logged in as username' is visible
    [Documentation]                         Verify that 'Logged in as username' is visible
    Element Should Be Visible               ${loggedin_section}

Click 'Logout' button
    [Documentation]                         Click 'Logout' button
    Click Element                           ${logout_button}

Verify that user is navigated to login page
    [Documentation]                         Verify that user is navigated to login page
    Element Should Be Visible               ${login_page}