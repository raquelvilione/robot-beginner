***Settings***
Resource            base.robot

Test Setup          New Session
Test Teardown       Close Session

***Variables***


***Test Cases***
Login successfully
    Go To                           ${URL}/login
    Login With                      stark              jarvis!
    Should See Logged User          Tony Stark

Invalid password
    Go To                           ${URL}/login
    Login With                      stark              jarvis
    Should Contain Login Alert      Senha é invalida!

User doesn't exist
    Go To                           ${URL}/login
    Login With                      hulk               jarvis!
    Should Contain Login Alert      O usuário informado não está cadastrado!

***Keywords***
Login With
    [Arguments]                     ${login}           ${password}
    Input Text                      css=input[name=username]        ${login}             
    Input Text                      css=input[name=password]        ${password}         
    Click Element                   class=btn-login 

Should Contain Login Alert
    [Arguments]                     ${expect_message}
    ${message}=                     Get WebElement     id=flash
    Should Contain                  ${message.text}    ${expect_message}

Should See Logged User
    [Arguments]                     ${full_name}
    Page Should Contain             Olá, ${full_name}. Você acessou a área logada!