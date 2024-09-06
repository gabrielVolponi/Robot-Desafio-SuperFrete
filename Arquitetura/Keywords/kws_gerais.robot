** Settings **

Documentation    Keywords/Functions Gerais

Resource    ../../configs/package.resource

** Keywords **

Abrir Navegador
    SeleniumLibrary.Open Browser               ${Base_url}    ${Browser}
    SeleniumLibrary.Maximize Browser Window

Fechar Navegador
    SeleniumLibrary.Capture Page Screenshot
    Close Browser

Esperar Elemento Ficar Visivel
    [Arguments]                                     ${locator}
    sleep                                           10s
    SeleniumLibrary.Page Should Contain Element    ${Locator}

Esperar Elemento Ficar Visivel e Clicar
    [Arguments]                       ${locator}
    Esperar Elemento Ficar Visivel    ${locator}
    SeleniumLibrary.Click Element     ${locator}

Esperar input ficar visivel e digitar texto
    [Arguments]                       ${locator}    ${text}
    Esperar Elemento Ficar Visivel    ${locator}
    SeleniumLibrary.Input Text        ${text}

Esperar que Elemento tenha texto
    [Arguments]        ${locator}                   ${text}
    ${elementText}=    SeleniumLibrary.Get Value    ${locator}
    Should Contain     ${elementText}               ${text}

Digitar texto no input e checar valor digitado
    [Arguments]                                    ${locator}    ${text}
    Esperar input ficar visivel e digitar texto    ${locator}    ${text}
    Esperar que Elemento tenha texto               ${locator}    ${text}

