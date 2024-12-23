# Automação de testes Robot Framework com Appium - Android

Casos de testes utilizando Robot Framework para automação de uma aplicação Android.


### Pré-requisitos:

- Android Studio 2021+: https://developer.android.com/studio
- Python 3.13+: https://www.python.org/downloads/
- Appium 2.13+: https://appium.io/
- Appium-Inspector 2024.+: https://github.com/appium/appium-inspector/releases
- Robot Framework 7.1.1+ (instalado no passo 3): https://robotframework.org/#getting-started
- Android UiAutomator2 driver: https://appium.io/docs/en/2.0/quickstart/uiauto2-driver/
- PyYAML 6.0.2: 
```
pip install PyYAML
```


### Instalação:

1 - Instale os pré-requisitos mencionados acima exceto o Robot Framework

2 - Instalar Robot Framework e lib do appium:
```
$ pip install --upgrade pip
$ pip install Appium-Python-Client
$ pip install robotframework
$ robot --version
$ pip install --upgrade robotframework-appiumlibrary
Robot Framework 7.1.1 (Python 3.13.1 on win32)
```

### Configuração do Emulador:

1 - Instale e configure o Android Studio  
2 - Abra o Android Studio e crie um Dispositivo Virtual: "Pixel 7 PRO"  
3 - Rode o emulador do dispositivo criado  
4 - Abra o app "Login"  

### Verificando o nome da aplicação:

```
$ adb shell generic_x86_arm:/ $ dumpsys window | grep -E 'mCurrentFocus' mCurrentFocus=Window{1204c85 u0 com.example.vamsi.login/com.example.vamsi.login.MainActivity}
```

# Executando os testes com Robot

1 - Ajuste as configurações de conexão do Appium no [arquivo](resources\app.resource), caso necessário

2 - Execute o Appium Server:
```
npx appium
```
3 - Abra o emulador

4 - Abra outro terminal e execute o teste:
```
$ robot -d results tests
```
5 - Os relatórios são salvos na pasta [arquivo](results)  