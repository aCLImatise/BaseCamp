class: CommandLineTool
id: ../../../hca_auth_put_v1_group_role.cwl
inputs:
- id: roles
  doc: ''
  type: string
  inputBinding:
    prefix: --roles
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
- put-v1-group-role
