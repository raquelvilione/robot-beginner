***Settings***
Resource            base.robot

Test Setup          New Session
Test Teardown       Close Session

***Test Cases***
Selet Option Dropdown with text
    Go To                           ${URL}/dropdown
    Select From List By Label       class=avenger-list              Tony Stark 
    ${selected}=                    Get Selected List Value         class=avenger-list
    Should Be Equal                 ${selected}                     3

***Test Cases***    
Selet Option Dropdown with value
    Go To                           ${URL}/dropdown
    Select From List By Value       id=dropdown    3 
    ${selected}=                    Get Selected List Label         id=dropdown 
    Should Be Equal                 ${selected}                     Tony Stark