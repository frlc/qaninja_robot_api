*Settings*
Documentation    Suite de busca teste da api da marvel

Resource   ${EXECDIR}/robot_api/resources/base.robot
Library    ${EXECDIR}/robot_api/resources/factories/person_1.py
Library    ${EXECDIR}/robot_api/resources/factories/person_2.py

Suite Setup  Super Setup   frlc@gmail.com

*** Test Cases ***
Deve buscar um personagem pelo id

    &{personagem}          Factory Thanos
    ${response_add}        Post New Character     ${personagem}
    ${personagem_id}       Set Variable           ${response_add.json()}[_id]
    ${response_search}     Get Character by id    ${personagem_id} 

    Status Should Be  200  ${response_search}

    Should Be Equal  ${response_search.json()}[name]  ${personagem}[name]








