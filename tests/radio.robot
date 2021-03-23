***Settings***
Resource            base.robot

Test Setup          New Session
Test Teardown       Close Session

***Test Cases***
Selet CheckBox with ID
    Go To                           ${URL}/radios
    Select Radio Button             movies      iron-man         
    Radio Button Should Be Set To   movies      iron-man 