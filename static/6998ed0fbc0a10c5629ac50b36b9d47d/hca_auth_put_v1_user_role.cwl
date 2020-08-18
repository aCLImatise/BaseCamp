class: CommandLineTool
id: ../../../hca_auth_put_v1_user_role.cwl
inputs:
- id: roles
  doc: ''
  type: string
  inputBinding:
    prefix: --roles
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
- put-v1-user-role
