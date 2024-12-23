*** Settings ***
Resource         ../resources/app.resource
Resource         ../resources/pages/cadastro_page.resource

Test Setup       Abrir App
Test Teardown    Fechar App

*** Test Cases ***
Teste Case 01.01 - Acessar tela de cadastro
    [Documentation]    Acesso a tela de cadastro           
    Dado que acesse o app debug a primeira vez
    Quando clicar em New User? Register
    Então usuario é redirecionado a tela de cadastro de usuario

Teste Case 01.02 - Cadastrar novo usuario
    [Documentation]    Cadastro de novo usurio no app-debug
    [Tags]             Tela_Cadastro
    Dado que acesse o app debug a primeira vez
    Quando clicar em New User? Register
    E preencher fomulario com dados validos
    E Registrar dados do usuario
    Então validar que usuario foi cadastrado com sucesso

Teste Case 01.03 - Enviar cadastro sem preencher campos
    [Documentation]    Não passar nenhuma informação no cadastro e tentar registrar
    [Tags]             Registro_Invalido
    Dado que acesse o app debug a primeira vez
    Quando clicar em New User? Register
    E Registrar dados do usuario
    Então validar mensagem de erro da tela de cadastro
