*** Settings ***
Library  BuiltIn

*** Test Cases ***
計算
    1 + 1 等於 2

多筆計算Keyword
    "2 + 2" 等於 "4"
    "1 + 1" 等於 "2"
    "1 + 2" 等於 "3"

多筆計算Template
    [Template]  "${calculation}" 等於 "${expected}"
    1 + 1  2
    2 + 2  4
    3 + 3  6

*** Keywords ***
1 + 1 等於 2
    ${sum}=  Evaluate  1 + 1
    Should Be Equal As Integers  ${sum}  2

"${calculation}" 等於 "${expected}"
    ${result} =    Evaluate    ${calculation}
    Should Be Equal As Integers    ${result}     ${expected}