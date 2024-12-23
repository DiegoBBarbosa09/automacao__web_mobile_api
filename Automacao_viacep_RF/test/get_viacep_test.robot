*** Settings ***
Resource    ../Resources/get_viacep.resource


*** Test Cases ***
Cenario de teste 01 - Validar retorno de logradouro e DDD da API
    Dado que esteja na rota consulta viacep com cep valido
    Quando recebo a resposta da requisição de sucesso
    Então validar no retorno da API o logradouro
    E no retorno validar o DDD