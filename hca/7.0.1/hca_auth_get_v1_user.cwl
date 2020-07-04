class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/hca_auth_get_v1_user.cwl
inputs:
- id: user_id
  doc: User ID (email).
  type: string
  inputBinding:
    prefix: --user-id
outputs: []
cwlVersion: v1.1
baseCommand:
- hca
- auth
- get-v1-user
