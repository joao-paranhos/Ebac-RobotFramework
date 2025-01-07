*** Settings ***
Library    SeleniumLibrary

*** Keywords ***

Navegando ate a pagina principal
    [Arguments]    ${URL}
    Go To    ${URL}
    Maximize Browser Window

Pesquisando produto
    [Arguments]    ${NOMEPRODUTO}
    Click Element   xpath=//div[@class='pull-right']//div[@class="search-form-modal"]
    Input Text    xpath=//div[@class="modal fade searchformshow in"]//input[contains(@placeholder, "Enter your search ...")]    ${NOMEPRODUTO}
    Click Button    xpath=//div[@class="modal fade searchformshow in"]//button[@class="button-search btn btn-sm"]

Validando URL
    ${Location}    get Location
    Should Be Equal    ${Location}    http://lojaebac.ebaconline.art.br/?product_cat=&s=${NOMEPRODUTO}&post_type=product



