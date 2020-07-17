class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/hca_auth_get_v1_user_groups.cwl
inputs:
- id: no_paginate
  doc: Do not automatically page the responses
  type: boolean
  inputBinding:
    prefix: --no-paginate
- id: user_id
  doc: ''
  type: string
  inputBinding:
    prefix: --user-id
outputs: []
cwlVersion: v1.1
baseCommand:
- hca
- auth
- get-v1-user-groups
