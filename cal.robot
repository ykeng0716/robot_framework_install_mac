*** Settings ***
Library  SeleniumLibrary
Library  DebugLibrary

*** Test Cases ***
計算機100*30
    Open Browser  http://www.google.com.tw  chrome
    Input Text  //input[@name="q"]    計算機
    Click Element  xpath=//*[contains(@jsname, "VlcLAe")]//*[contains(@value, "Google 搜尋") and contains(@type, "submit")]
    Click Element  xpath=//*[contains(@jsname, "N10B9")]
    Click Element  xpath=//*[contains(@jsname, "bkEvMb")]
    Click Element  xpath=//*[contains(@jsname, "bkEvMb")]
    Click Element  xpath=//*[contains(@jsname, "YovRWb")]
    Click Element  xpath=//*[contains(@jsname, "KN1kY")]
    Click Element  xpath=//*[contains(@jsname, "bkEvMb")]
    Click Element  xpath=//*[contains(@jsname, "Pt8tGc")]
    ${value} =  Get Text  //*[@id="cwos"]
    Should Be Equal  ${value}  3000
    sleep  3s
    Close Browser