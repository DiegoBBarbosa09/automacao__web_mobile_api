*** Settings ***
Library    RequestsLibrary
Library    String
Library    Collections

Variables    ../Resources/data/data_cep.yml

*** Variables ***
${BASE_URL_VIACEP}    https://viacep.com.br/ws/

*** Keywords ***

Dado que esteja na rota consulta viacep com cep valido
    Create Session    buscaCep    ${BASE_URL_VIACEP}
    ${headers}     Create Dictionary    Content-Type=application/json
    ${response}    GET On Session    buscaCep    ${cep_valido}/json/    headers=${headers}
    Set Suite Variable    ${response}

Quando recebo a resposta da requisição de sucesso
    Should Be Equal As Numbers    ${response.status_code}    200

Então validar no retorno da API o logradouro    
    Should Be Equal As Strings    ${response.json()["logradouro"]}    ${logradouro}

E no retorno validar o DDD
    Should Be Equal As Strings    ${response.json()["ddd"]}    ${ddd}