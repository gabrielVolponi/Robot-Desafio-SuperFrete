*** Settings ***

Documentation    Keywords/Functions para Formulário Busca Cep

Resource    ../../configs/package.resource

*** Keywords ***
Quando clico no link Pesquisar Cep e Preencho o form de cep
    Esperar Elemento Ficar Visivel e Clicar           ${link_pesquisa_cep}
    sleep                                             7s
    



Entao devo entrar na tela de Busca Cep
    Esperar Elemento Ficar Visivel      ${select_estado}   


