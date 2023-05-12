*** Settings ***
Documentation       Essa suite testa o site da Amazon.com.br obrigado
Resource            amazon_resources.robot

Test Setup          Abrir o navegador
Test Teardown       Fechar navegador

*** Test Cases ***
Caso de Teste 01 - Acesso ao menu "Livros"
    [Documentation]    Esse teste verifica o site da Amazon.com.br e Livros
    ...
    [Tags]    menu livros
    Acessar a home page do site Amazon.com.br
    Entrar no menu livros

Caso de Teste 02 - Pesquisa de um produto
    [Documentation]    Esse teste verifica a existencia de um produto
    [Tags]    pesquisa_produtos
    Acessar a home page do site Amazon.com.br
    Digitar o nome de produto no campo de pesquisa "drones"
    Clicar no botão de pesquisa
    
