*** Settings ***
Library    SeleniumLibrary
Library  FakerLibrary
Library    String



***Variables***

${SENHA}    TESTE123@#456

*** Test Cases ***

Processo de compra
     ${ENDERECO}             FakerLibrary.Address
     ${COMPLEMENTO}    FakerLibrary.Word
     ${CIDADE}    FakerLibrary.City
     ${CEP}    FakerLibrary.Postalcode
     ${TELEFONE}    FakerLibrary.Basic Phone Number
     ${EMAIL}    FakerLibrary.Email
     ${NOME}    FakerLibrary.First Name
     ${SOBRENOME}    FakerLibrary.Last Name
     


    Open Browser    url= http://lojaebac.ebaconline.art.br    browser= Firefox    service_log_path=${{os.path.devnull}}
    Maximize Browser Window
    Click Element   xpath=//div[@class='pull-right']//div[@class="search-form-modal"]
    Input Text    xpath=//div[@class="modal fade searchformshow in"]//input[contains(@placeholder, "Enter your search ...")]    shorts
    Click Button    xpath=//div[@class="modal fade searchformshow in"]//button[@class="button-search btn btn-sm"]
    Wait Until Element Is Visible    xpath=//div[@class="row"]//img[contains(@src,"msh11-blue_main-427x546.jpg")]
    Click Element    xpath=//div[@class="row"]//img[contains(@src,"msh11-blue_main-427x546.jpg")]
    Wait Until Element Is Visible    xpath=//*[@id="product-3528"]/div[1]/div[2]/div/form/table/tbody/tr[1]/td[2]/ul/li[4]
    Click Element    xpath=//*[@id="product-3528"]/div[1]/div[2]/div/form/table/tbody/tr[1]/td[2]/ul/li[4]
    Click Element    xpath=//*[@id="product-3528"]/div[1]/div[2]/div/form/table/tbody/tr[1]/td[2]/ul/li[4]
    Click Element    xpath=//*[@id="product-3528"]/div[1]/div[2]/div/form/table/tbody/tr[2]/td[2]/ul/li[2]
    Click Element    xpath=//button[@class="single_add_to_cart_button button alt"]
    Click Element    xpath=//*[@id="content"]/div[2]/div/a
    Click Element    xpath=//*[@id="main"]/div/div[3]/div/div/a
    Input Text    id=billing_first_name    ${NOME}
    Input Text    id=billing_last_name    ${SOBRENOME}
    Input Text    id=billing_company    Roupas mais
    Click Element    xpath=//span[@id="select2-billing_country-container"]
    Click Element    xpath=//ul[@class="select2-results__options"][@id="select2-billing_country-results"]//li[text()="Alemanha"]
    Input Text    xpath=//input[@class="input-text "][@name="billing_address_1"]    ${ENDERECO}
    Input Text    xpath=//*[@id="billing_city"]    ${CIDADE}
    Input Text    xpath=//input[@class="input-text "][@id="billing_address_2"]    ${COMPLEMENTO}
    Input Text    xpath=//input[@class="input-text "][@name="billing_postcode"]    ${CEP}
    Input Text    xpath=//input[@class="input-text "][@name="billing_phone"]    ${TELEFONE}
    Input Text    xpath=//input[@class="input-text "][@name="billing_email"]    ${EMAIL}
    Select Checkbox    id=createaccount
    Input Text    xpath=//input[@class="input-text "][@name="account_password"]    ${SENHA}
    Input Text    xpath=//textarea[@class="input-text "][@name="order_comments"]    TESTE DO QA 
    Click Element    xpath=//*[@id="terms"]
    Click Element    xpath=//*[@id="place_order"]
    Close Browser    



