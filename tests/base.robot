***Settings***
Documentation       Implements the initial structure

Library             SeleniumLibrary

**Variables***
${URL}                      https://training-wheels-protocol.herokuapp.com 

***Keywords***
New Session
    Open Browser            ${URL}                  chrome

Close Session
    Capture Page Screenshot
    Close Browser