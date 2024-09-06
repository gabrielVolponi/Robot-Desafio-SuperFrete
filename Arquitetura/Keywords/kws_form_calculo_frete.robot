*** Settings ***

Documentation    Keywords/Functions para Formulário Cálculo Frete

Resource    ../../configs/package.resource

*** Keywords ***

Dado que estou no Formulario de Frete
    Esperar Elemento Ficar Visivel    ${banner_promotion}

Quando preencho o form com dados validos
    Esperar input ficar visivel e digitar texto       ${Input_cep_origem}      ${cep_1} 
    Esperar Elemento Ficar Visivel e Clicar           ${select_peso}
    Esperar Elemento Ficar Visivel e Clicar           ${peso} 
    Digitar texto no input e checar valor digitado    ${Input_altura}          ${altura}
    Digitar texto no input e checar valor digitado    ${Input_largura}         ${largura}
    Digitar texto no input e checar valor digitado    ${Input_comprimento}     ${comprimento}
    Esperar input ficar visivel e digitar texto       ${Input_cep_destino}     ${cep_2}
    Quando clico no botao btn salvar
    Esperar Elemento Ficar Visivel e Clicar           ${btn_calcular_frete}

Quando preencho form com dados validos e clico em salvar
    Esperar input ficar visivel e digitar texto       ${Input_cep_origem}     ${cep_1} 
    Esperar Elemento Ficar Visivel e Clicar           ${select_peso}
    Esperar Elemento Ficar Visivel e Clicar           ${peso} 
    Digitar texto no input e checar valor digitado    ${Input_altura}         ${altura}
    Digitar texto no input e checar valor digitado    ${Input_largura}        ${largura}
    Digitar texto no input e checar valor digitado    ${Input_comprimento}    ${comprimento}
    Esperar input ficar visivel e digitar texto       ${Input_cep_destino}    ${cep_2}
    Quando clico no botao btn salvar


Quando clico no botao btn salvar
    Esperar Elemento Ficar Visivel e Clicar    ${btn_salvar} 

Quando clico no botao btn limpar
    Esperar Elemento Ficar Visivel e Clicar    ${btn_limpar} 

Quando preencho form com dados validos e clico em limpar
    Esperar input ficar visivel e digitar texto       ${Input_cep_origem}     ${cep_1} 
    Esperar Elemento Ficar Visivel e Clicar           ${select_peso}
    Esperar Elemento Ficar Visivel e Clicar           ${peso} 
    Digitar texto no input e checar valor digitado    ${Input_altura}         ${altura}
    Digitar texto no input e checar valor digitado    ${Input_largura}        ${largura}
    Digitar texto no input e checar valor digitado    ${Input_comprimento}    ${comprimento}
    Esperar input ficar visivel e digitar texto       ${Input_cep_destino}    ${cep_2}
    Quando clico no botao btn limpar


Entao deve aparecer as opcoes de modalidade
    Esperar texto visivel Web    SELECIONE A MODALIDADE
    # Esperar Select Ficar Visivel E Escolher Opcao   ${select_peso}        ${peso}

Entao dados sao salvos
    Esperar texto visivel Web    As informações do pacote atual foram salvas e estarão preenchidas na próxima vez que você abrir o aplicativo.


Entao dados sao limpos
    Verificar Se Input Esta Limpo    ${Input_cep_origem}
    Verificar Se Input Esta Limpo    ${Input_altura}
    Verificar Se Input Esta Limpo    ${Input_comprimento}
    Verificar Se Input Esta Limpo    ${Input_cep_destino}

