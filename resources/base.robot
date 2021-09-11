*Settings*

Documentation        Arquivo de conf padrão

Library   RequestsLibrary

Resource  ${EXECDIR}/robot_api/routes/characters.robot

*Variables*
${base_uri}      http://marvel.qaninja.academy

*Keywords*
Super Setup
    [Arguments]         ${email}

    Set Autorization    ${email}
    Back to the past


Set Autorization

    [Arguments]      ${email}

    &{usuario}       Create Dictionary          email=${email}  

    ${response}      POST
    ...              ${base_uri}/accounts
    ...              json=${usuario}

    ${client_key}    Set Variable
    ...              ${response.json()}[client_key]

    &{HEADERS}       Create Dictionary
    ...              Content-Type=application/json
    ...              client_key=${client_key}

    Set Suite Variable   ${HEADERS}


Back to the past

    DELETE   ${base_uri}/delorean      headers=${HEADERS}

