*** Settings ***
Documentation           Base related keywords
Library                 SeleniumLibrary

*** Variables ***
${HOMEPAGE_URL}     https://automationexercise.com

*** Keywords ***
Open Chrome Browser
    [Documentation]         Keyword to open browser with chrome
    Open Browser            browser=headlesschrome      url=${HOMEPAGE_URL}