class: CommandLineTool
id: hca_auth_get_v1_user.cwl
inputs:
- id: in_user_id
  doc: User ID (email).
  type: string
  inputBinding:
    prefix: --user-id
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hca
- auth
- get-v1-user
