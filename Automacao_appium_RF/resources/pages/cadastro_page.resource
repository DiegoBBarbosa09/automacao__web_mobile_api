*** Settings ***
Resource    ../app.resource

Variables    ../locators/dados_usuario.locators.yml
Variables    ../locators/cadastro_locators.yml

*** Keywords ***

E preencher fomulario com dados validos
    Input Text    id=${Input_nome}        text=${nome}
    Input Text    id=${input_telefone}    text=${telefone}
    Input Text    id=${input_email}       text=${email}
    Input Text    id=${input_senha}       text=${senha}

E Registrar dados do usuario
    Wait Until Element Is Visible    id=${button_registrar}
    Click Element                    id=${button_registrar}

Então validar que usuario foi cadastrado com sucesso
    Wait Until Page Contains    text=Registration Successful

Então validar mensagem de erro da tela de cadastro
    Wait Until Page Contains    text=Please fill all the detail