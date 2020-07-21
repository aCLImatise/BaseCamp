class: CommandLineTool
id: ../../../hca_auth_get_v1_group_users.cwl
inputs:
- id: no_paginate
  doc: Do not automatically page the responses
  type: boolean
  inputBinding:
    prefix: --no-paginate
- id: group_id
  doc: ''
  type: string
  inputBinding:
    prefix: --group-id
outputs: []
cwlVersion: v1.1
baseCommand:
- hca
- auth
- get-v1-group-users
