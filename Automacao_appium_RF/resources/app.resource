*** Settings ***
Library      AppiumLibrary    timeout=10

Variables    ../resources/locators/cadastro_locators.yml


*** Keywords ***

Abrir App
    Open Application    http://localhost:4723
    ...                 platformName=Android
    ...                 deviceName=Android Emulator
    ...                 automationName=UIAutomator2
    ...                 appPackage=com.example.vamsi.login
    ...                 appActivity=com.example.vamsi.login.MainActivity
    ...                 uuid=emulator-5554
    ...                 autoGrantPermissions=true
    
Dado que acesse o app debug a primeira vez
    
    Wait Until Page Contains    Login
    Wait Until Page Contains    Email
    Wait Until Page Contains    Password
    Wait Until Page Contains    Login
    Wait Until Page Contains    New User? Register


Quando clicar em New User? Register
    Click Element    id=${button_novo_registro}

Então usuario é redirecionado a tela de cadastro de usuario
    Wait Until Page Contains    Registration
    Wait Until Page Contains    Name
    Wait Until Page Contains    Phone number
    Wait Until Page Contains    Gmail
    Wait Until Page Contains    Password
    Wait Until Page Contains    Register
    Wait Until Page Contains    Login


Fechar App
    Close Application
