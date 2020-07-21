class: CommandLineTool
id: ../../../hca_auth_post_v1_user.cwl
inputs:
- id: user_id
  doc: ''
  type: string
  inputBinding:
    prefix: --user-id
- id: groups
  doc: ''
  type: string
  inputBinding:
    prefix: --groups
outputs: []
cwlVersion: v1.1
baseCommand:
- hca
- auth
- post-v1-user
