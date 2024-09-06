*** Settings ***

Documentation    Keywords/Functions para Formulário Cálculo Frete

Resource    ../../configs/package.resource

*** Keywords ***

Dado que estou no Formulario de Frete
    Esperar Elemento Ficar Visivel    ${banner_promotion}

Quando preencho o form com dados validos
    
