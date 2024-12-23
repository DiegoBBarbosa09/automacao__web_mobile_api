*** Settings ***
Resource     ../app.resource
Resource     ../pages/cadastro_page.resource

Variables    ../locators/login_locatos.yml
Variables    ../locators/dados_usuario.locators.yml


*** Keywords ***
Dado que esteja na tela de Login
    Wait Until Page Contains    Email
    Wait Until Page Contains    Password
 
Quando passar credenciais validas
    Registro de novo usuario
    Wait Until Page Contains    Email
    Input Text       id=${login_email}    text=${email}
    Input Text       id=${login_senha}    text=${senha}
    Click Element    id=${login_button}

Então validar login com sucesso
    Wait Until Page Contains    text=You are now logged in
    Wait Until Page Contains    text=Login sucess

Registro de novo usuario
    Quando clicar em New User? Register
    Wait Until Page Contains    Registration
    E preencher fomulario com dados validos
    E Registrar dados do usuario
    Wait Until Page Contains    text=Registration Successful
    Click Element    id=${retorna_login}

Quando passar credenciais invlaidas
    Input Text       id=${login_email}    text=${email_invalido}
    Input Text       id=${login_senha}    text=${senha}
    Click Element    id=${login_button}

Então validar erro de login
    Wait Until Page Contains    Login error