***Settings***
Resource            base.robot

Test Setup          New Session
Test Teardown       Close Session

***Test Cases***
Checks the value by the line number
    Go To                           ${URL}/tables
    Table Row Should Contain        id=actors           1       @robertdowneyjr	

Find the line by text
    Go To                           ${URL}/tables
    ${target}                       Get WebElement              xpath=.//tr[contains(., "@robertdowneyjr")]
    Should Contain                  ${target.text}              Homem de Ferro
    Should Contain                  ${target.text}              Vingadores
    Log                             ${target.text} 
    Log To Console                  ${target.text} 