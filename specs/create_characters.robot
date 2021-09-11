*Settings*
Documentation    Suite de teste da api da marvel

Resource   ${EXECDIR}/robot_api/resources/base.robot
Library    ${EXECDIR}/robot_api/resources/factories/person_1.py
Library    ${EXECDIR}/robot_api/resources/factories/person_2.py

Suite Setup  Super Setup   frlc@gmail.com

*** Test Cases ***
Deve Cadastrar um personagem    
    &{personagem}    Factory Thanos    

    ${response}     Post New Character     ${personagem}

    Status Should Be  200  ${response}


Não deve cadastrar com mesmo nome
    [Tags]    wip

    &{personagem}     Factory Deadpool

    Post New Character     ${personagem}

    ${response}     Post New Character     ${personagem}

    Status Should Be  409  ${response}
    Should Be Equal   ${response.json()}[error]    Character already exists :(







