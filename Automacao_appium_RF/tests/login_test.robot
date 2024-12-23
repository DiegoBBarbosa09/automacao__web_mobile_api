*** Settings ***
Resource         ../resources/pages/login_page.resource

Test Setup       Abrir App
# Test Teardown    Fechar App


*** Test Cases ***
Caso de Teste 02.01 - Login com sucesso
    [Documentation]    Passar credenciais de usuario valido
    [Tags]             Dados_Validos
    Dado que esteja na tela de Login
    Quando passar credenciais validas
    Então validar login com sucesso

Caso de Teste 02.02 - Login com cadastro inexistente
    [Documentation]    Passar credenciais de usuario inexistente
    [Tags]             Dados_Invalidos
    Dado que esteja na tela de Login
    Quando passar credenciais invlaidas
    Então validar erro de login