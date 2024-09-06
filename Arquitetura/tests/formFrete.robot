** Settings **
Library    SeleniumLibrary

Documentation    BDD cenário preenchimento form Cálculo Frete

Resource    ../../configs/package.resource

Test Setup       Abrir Navegador
Test Teardown    Fechar Navegador


** Test Cases **
Cenário 1: Acessando o site do Robot
    Dado que estou no Formulario de Frete
    Quando preencho o form com dados validos
