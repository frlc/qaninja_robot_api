*Settings*

Documentation   Ações da rota /characters


*Keywords*

Post New Character
    [Arguments]       ${payloads}

    ${response}     POST    
    ...             ${base_uri}/characters
    ...             json=${payloads}
    ...             headers=${headers}
    ...             expected_status=any


    [return]        ${response}

Get Character by id
    [Arguments]       ${personagem_id}

    ${response}     GET    
    ...             ${base_uri}/characters/${personagem_id}
    ...             headers=${headers}
    ...             expected_status=any


    [return]        ${response}