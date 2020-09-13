class: CommandLineTool
id: ../../../hca_auth_put_v1_user.cwl
inputs:
- id: in_user_id
  doc: User ID (email).
  type: string
  inputBinding:
    prefix: --user-id
- id: in_status
  doc: ''
  type: string
  inputBinding:
    prefix: --status
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hca
- auth
- put-v1-user
