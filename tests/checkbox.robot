***Settings***
Resource            base.robot

Test Setup          New Session
Test Teardown       Close Session

**Variables***
${check_thor}               id=thor 
${check_iron_man}           css=input[value="iron-man"]   
${check_black_panther}      xpath=//*[@id='checkboxes']//input[7] 

***Test Cases***
Selet CheckBox with ID
    Go To                           ${URL}/checkboxes
    Select Checkbox                 ${check_thor}   
    Checkbox Should Be Selected     ${check_thor} 

Selet CheckBox with CSS Selector
    Go To                           ${URL}/checkboxes
    Select Checkbox                 ${check_iron_man}   
    Checkbox Should Be Selected     ${check_iron_man}

Selet CheckBox with XPath
    Go To                           ${URL}/checkboxes
    Select Checkbox                 ${check_black_panther}  
    Checkbox Should Be Selected     ${check_black_panther}  