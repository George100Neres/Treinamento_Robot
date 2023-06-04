*** Settings ***
Library           SeleniumLibrary

#Dados do Teste
*** Variables ***
${Texto}          Michael Jackson
${BROWSER}        Chrome
${URL}            https://www.youtube.com/
#${RANDOM_TEXT}     ${RANDOM_TEXT.randint(1, 100)}

#Elementos
${Input_Pesquisa}    //input[@id="search"]
${Button_Pesquisa}   //button[@id="search-icon-legacy"]


*** Keywords ***

   
Dado que eu acesso o site do you tub
    Open Browser  ${URL}  ${BROWSER}
Qaundo digito algo no campo de busca
    Input Text    ${Input_Pesquisa}     ${Texto}
E clico em buscar
    Click Button    ${Button_Pesquisa}    
#Entao o resultado sera buscado
 #Element Should Be Visible
  Sleep  3
   Close Browser
*** Test Cases ***
Cenario 1: Realizar pesquisar no campo
    Dado que eu acesso o site do you tub
    Qaundo digito algo no campo de busca
    E clico em buscar
    #Entao o resultado sera buscado


