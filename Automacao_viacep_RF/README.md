# Automação de testes Robot Framework API

Casos de testes utilizando Robot Framework para automação de API viaCep


### Pré-requisitos:

- Python 3.13+: https://www.python.org/downloads/
- Robot Framework 7.1.1+: https://robotframework.org/#getting-started
- PyYAML 6.0.2: 
```
pip install PyYAML
```


### Instalação:

1 - Instale os pré-requisitos mencionados acima exceto o Robot Framework

2 - Instalar Robot Framework e lib do appium:
```
$ pip install --upgrade pip
$ pip install robotframework
$ robot --version
```


# Executando os testes com Robot

1 - Abra outro terminal e execute o teste:
```
$ robot -d results test
```
2 - Os relatórios são salvos na pasta [arquivo](results)  