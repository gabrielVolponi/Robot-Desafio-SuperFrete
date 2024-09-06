** Settings **
Library    SeleniumLibrary

Documentation    BDD cenário preenchimento form Cálculo Frete

Resource    ../../configs/package.resource

Test Setup       Abrir Navegador
Test Teardown    Fechar Navegador

Test Tags    regressivo_formulario


** Test Cases **
# FLUXOS PRINCIPAIS
Cenário 1: Preencher Formulário Cálculo Frete com Dados Válidos
    [Tags]   principal_form_frete_001
    Dado que estou no Formulario de Frete
    Quando preencho o form com dados validos
    Entao deve aparecer as opcoes de modalidade 

Cenário 2: Preencher Dados e Clicar em Salvar
    [Tags]    principal_form_frete_002
    Dado que estou no Formulario de Frete
    Quando preencho form com dados validos e clico em salvar
    Entao dados sao salvos

Cenário 3: Preencher Dados e Clicar em Limpar
    [Tags]    principal_form_frete_003
    Dado que estou no Formulario de Frete
    Quando preencho form com dados validos e clico em limpar
    Entao dados sao limpos

Cenário 4: Pesquisar CEP
    [Tags]    principal_form_frete_004
    Dado que estou no Formulario de Frete
    Quando clico no link Pesquisar Cep e Preencho o form de cep
    Entao devo entrar na tela de Busca Cep
