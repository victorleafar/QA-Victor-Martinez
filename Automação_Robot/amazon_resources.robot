*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${url}                                  http://www.amazon.com.br
${menu_livros}                          //*[@id="nav-xshop"]/a[8]
${elemento_Loja_livros}                 /html/head/title
${elemento_campo_pesquisa}              //input[contains(@type,'text')]
${botao_pesquisar}                      //input[contains(@type,'submit')]
${quantidade_elemento}                  0


*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome
    Maximize Browser Window

Fechar navegador
    Close Browser

Acessar a home page do site Amazon.com.br
    Go to    url=${url}
    Wait Until Element Is Visible    locator=${menu_livros}

Entrar no menu livros
    Click Element    locator=${menu_livros}


Digitar o nome de produto no campo de pesquisa "${produto_pesquisar}"
    Input Text    locator=${elemento_campo_pesquisa}    text=${produto_pesquisar}

Clicar no botão de pesquisa
    Click Button    locator=${botao_pesquisar}