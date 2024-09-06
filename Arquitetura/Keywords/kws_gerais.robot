** Settings **

Documentation    Keywords/Functions Gerais

Resource    ../../configs/package.resource

** Keywords **

Abrir Navegador
    SeleniumLibrary.Open Browser               ${Base_url}    ${Browser}
    SeleniumLibrary.Maximize Browser Window

Fechar Navegador
    sleep                                      2s
    SeleniumLibrary.Capture Page Screenshot
    Close Browser

Esperar Elemento Ficar Visivel
    [Arguments]                                    ${locator}
    SeleniumLibrary.Wait Until Page Contains Element    ${Locator}

Esperar texto visivel Web
    [Arguments]                                 ${text}
    SeleniumLibrary.Wait Until Page Contains    ${text}

Esperar texto visivel e Clicar
    [Arguments]     ${text}
    Esperar texto visivel Web   ${text}


Esperar Elemento Ficar Visivel e Clicar
    [Arguments]                       ${locator}
    Esperar Elemento Ficar Visivel    ${locator}
    SeleniumLibrary.Click Element     ${locator}

Esperar input ficar visivel e digitar texto
    [Arguments]                       ${locator}    ${text}
    Esperar Elemento Ficar Visivel    ${locator}
    SeleniumLibrary.Input Text        ${locator}    ${text}

Esperar que Elemento tenha texto
    [Arguments]        ${locator}                   ${text}
    ${elementText}=    SeleniumLibrary.Get Value    ${locator}
    Should Contain     ${elementText}               ${text}

Digitar texto no input e checar valor digitado
    [Arguments]                                    ${locator}    ${text}
    Esperar input ficar visivel e digitar texto    ${locator}    ${text}
    Esperar que Elemento tenha texto               ${locator}    ${text}

Esperar Select Ficar Visivel E Escolher Opcao
    [Arguments]                      ${locator}    ${valor}
    Wait Until Element Is Visible    ${locator}    20s
    Select From List By Value        ${locator}    ${valor}

Verificar Se Input Esta Limpo
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}    10s
    ${valor}=    Get Value           ${locator}
    Run Keyword And Ignore Error    Should Be Empty    ${valor}
