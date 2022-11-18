*** Settings ***
Documentation         Register related keyword
Resource              ../Base.robot
Variables             registerpage_locators.yaml


*** Variables ***
${HOMEPAGE_URL}     https://automationexercise.com
${name}             Rafif
${email}            rafif@gmail.com
${password}         rafif
${firstname}        afkari
${lastname}         zaky
${company}          nuansa
${address}          jl. timoho
${address2}         jl. johar
${state}            jakarta
${city}             jakarta pusat
${zipcode}          10540
${mobilephone}      08999922222

*** Keywords ***
Navigate To Url Homepage
    [Documentation]                 Keyword to Navigate user to Register
    Go To                           ${HOMEPAGE_URL}
    Maximize Browser Window

Verify that home page is visible successfully
    [Documentation]                 Verify current url is homepage url
    Element Should Be Visible       ${logohomepage}

Click on Signup/Login button
    [Documentation]                 Click on Signup/Login button
    Click Element                   ${signUpLoginButton}

Verify New User Signup is visible
    [Documentation]                 Verify New User Signup is visible
    Element Should Be Visible       ${newUserSignup_text}

Enter name in the Field Register Form
    [Documentation]                 Enter name in the Field Register Form
    [Arguments]                     ${name}
    Input Text                      ${name_loc}             ${name}

Enter email address in the Field Register Form
    [Documentation]                 Enter email address in the Field Register Form
    [Arguments]                     ${email}
    Input Text                      ${email_loc}             ${email}

Click 'Signup' button
    [Documentation]                 Click 'Signup' button
    Click Element                   ${signup_button}

Verify that 'ENTER ACCOUNT INFORMATION' is visible
    [Documentation]                 Verify that 'ENTER ACCOUNT INFORMATION' is visible
    Element Should Be Visible       ${enteraccountinfo_text}

Click Radio Button Title
    [Documentation]                 Click Radio Button Title
    Click Element                   ${gender}

Enter password in the Field Account Information
    [Documentation]                 Enter password in the Field Account INFORMATION
    [Arguments]                     ${password}
    Input Text                      ${password_loc}             ${password}

Select date of Birth in the Field Account Information 
    [Documentation]                 Select date of Birth in the Field Account Information
    Select From List By Index       ${day}              4
    Select From List By Index       ${month}            3
    Select From List By Index       ${year}             20

Select checkbox 'Sign up for our newsletter!'
    [Documentation]                 Select checkbox 'Sign up for our newsletter!'
    Click Element                   ${newslatter}

Select checkbox 'Receive special offers from our partners!'
    [Documentation]                 Select checkbox 'Receive special offers from our partners!'
    Click Element                   ${optin}

Enter First name in the Field Address Information
    [Documentation]                 Enter First name in the Field Address Information
    [Arguments]                     ${firstname}
    Input Text                      ${firstname_loc}           ${firstname}

Enter Last name in the Field Address Information
    [Documentation]                 Enter Last name in the Field Address Information
    [Arguments]                     ${lastname}
    Input Text                      ${lastname_loc}            ${lastname}

Enter Company in the Field Address Information
    [Documentation]                 Enter Company in the Field Address Information
    [Arguments]                     ${company}
    Input Text                      ${id_company}           ${company}

Enter Address in the Field Address Information
    [Documentation]                 Enter Address in the Field Address Information
    [Arguments]                     ${address}
    Input Text                      ${id_address}           ${address}

Enter Address 2 in the Field Address Information
    [Documentation]                 Enter Address 2 in the Field Address Information
    [Arguments]                     ${address}
    Input Text                      ${id_address2}          ${address2}

Select Country in the Field Address Information
    [Documentation]                 Select Country in the Field Address Information
    Select From List By Index       ${country}              5

Enter State in the Field Address Information
    [Documentation]                 Enter State in the Field Address Information
    [Arguments]                     ${state}
    Input Text                      ${id_state}             ${state}

Enter City in the Field Address Information
    [Documentation]                 Enter City in the Field Address Information
    [Arguments]                     ${city}
    Input Text                      ${id_city}              ${city}

Enter Zipcode in the Field Address Information
    [Documentation]                 Enter Zipcode in the Field Address Information
    [Arguments]                     ${zipcode}
    Input Text                      ${id_zipcode}           ${zipcode}

Enter Mobile Number in the Field Address Information
    [Documentation]                 Enter Mobile Number in the Field Address Information
    [Arguments]                     ${mobilephone}
    Input Text                      ${id_mobilephone}       ${mobilephone}

Click Create Account Button
    [Documentation]                 Click Create Account Button 
    Click Element                   ${createaccount_button}

Verify that 'ACCOUNT CREATED!' is visible
    [Documentation]                 Verify that 'ACCOUNT CREATED!' is visible
    Element Should Be Visible       ${account_created}

Click 'Continue' button
    [Documentation]                 Click 'Continue' button
    Click Element                   ${continue_button}

Verify that 'Logged in as username' is visible
    [Documentation]                 Verify that 'Logged in as username' is visible
    Element Should Be Visible       ${loggedinas}

Click Delete Account
    [Documentation]                 Click Delete Account
    Click Element                   ${delete_account}

Verify that 'ACCOUNT DELETED!' is visible and click 'Continue' button
    [Documentation]                 Verify that 'ACCOUNT DELETED!' is visible and click 'Continue' button
    Element Should Be Visible       ${account_deleted}
    Click Element                   ${continue_button2}