*** Settings ***
Documentation     This is a sample test suite using Robot Framework
Library           SeleniumLibrary
Suite Setup       Open Browser   http://automationexercise.com   chrome


*** Variables ***
${email}         uht009@gmail.com 
${name}          test1   
${review}        Enter name, email and review very good




*** Keywords ***

Click Products Button
#    Wait Until Page Contains Element    //*[@id="header"]/div/div/div/div[2]/div/ul/li[2]    timeout=10s
    Click Element    //*[@id="header"]/div/div/div/div[2]/div/ul/li[2]

Click viewProduct Button
    # Wait Until Page Contains Element   //*/html/body/section[2]/div[1]/div/div[2]/div/div[2]/div/div[2]/ul/li/a   timeout=10s
   Click Element      //*[@class='fa fa-plus-square']
    

Write Your Review
    Wait Until Page Contains Element    //*[@class='nav nav-tabs']

Input Email
    [Arguments]    ${email}
    Input Text    //*[@id="email"]    ${email}

Input name
    [Arguments]    ${name}
    Input Text    //*[@id="name"]    ${name}


Input Review
    [Arguments]    ${review}
    Input Text    //*[@id="review"]    ${review}

Click Submit
    Click Element  //*[@id="button-review"]





*** Test Cases ***
Click Products Button Test
    Click Products Button
    Click viewProduct Button
    Wait Until Page Contains Element     //*[@class='nav nav-tabs']
    Element Should Be Visible    //*[@class='nav nav-tabs']
    Input Email                  ${email}
    Input name                   ${name}
    Input Review                 ${review}
    Click Submit




 