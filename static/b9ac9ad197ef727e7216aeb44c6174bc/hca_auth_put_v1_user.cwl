class: CommandLineTool
id: ../../../hca_auth_put_v1_user.cwl
inputs:
- id: user_id
  doc: ''
  type: string
  inputBinding:
    prefix: --user-id
- id: status
  doc: ''
  type: string
  inputBinding:
    prefix: --status
outputs: []
cwlVersion: v1.1
baseCommand:
- hca
- auth
- put-v1-user
