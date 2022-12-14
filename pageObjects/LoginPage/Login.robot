*** Settings ***
Documentation         Login related keyword
Resource              ../Base.robot
Variables             ../LoginPage/loginpage_locators.yaml

*** Variables ***
${HOMEPAGE_URL}                http://automationexercise.com
${VALID_EMAIL}                 rafif@gmail.com
${INVALID_EMAIL}               asd@gmail.com
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

Enter incorrect email address and password
    [Documentation]                         Enter incorrect email address and password
    [Arguments]             ${email}        ${password}
    Input Text              ${id_email}     ${email}
    Input Text              ${id_password}  ${password}

Click 'login' button
    [Documentation]                          Click 'login' button
    Click Element                           ${login_button}

Verify that 'Logged in as username' is visible
    [Documentation]                         Verify that 'Logged in as username' is visible
    Element Should Be Visible               ${loggedin_section}

Verify error 'Your email or password is incorrect!' is visible
    [Documentation]                         Verify error 'Your email or password is incorrect!' is visible
    Element Should Be Visible               ${incorrect_section}

Click 'Delete Account' button
    [Documentation]                         Click 'Delete Account' button
    Click Element                           ${delete_acc}

Verify that 'ACCOUNT DELETED!' is visible
    [Documentation]                         Verify that 'ACCOUNT DELETED!' is visible
    Element Should Be Visible               ${account_deleted}