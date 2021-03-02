class: CommandLineTool
id: hca_auth_get_v1_group_roles.cwl
inputs:
- id: in_group_id
  doc: The name of the group.
  type: string?
  inputBinding:
    prefix: --group-id
- id: in_no_paginate
  doc: Do not automatically page the responses
  type: string?
  inputBinding:
    prefix: --no-paginate
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- hca
- auth
- get-v1-group-roles
