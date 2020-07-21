class: CommandLineTool
id: ../../../hca_auth_get_v1_roles.cwl
inputs:
- id: no_paginate
  doc: Do not automatically page the responses
  type: boolean
  inputBinding:
    prefix: --no-paginate
- id: next_token
  doc: ''
  type: string
  inputBinding:
    prefix: --next-token
outputs: []
cwlVersion: v1.1
baseCommand:
- hca
- auth
- get-v1-roles
