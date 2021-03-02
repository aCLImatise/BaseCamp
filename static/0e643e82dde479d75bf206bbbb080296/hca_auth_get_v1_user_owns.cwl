class: CommandLineTool
id: hca_auth_get_v1_user_owns.cwl
inputs:
- id: in_user_id
  doc: User ID (email).
  type: string?
  inputBinding:
    prefix: --user-id
- id: in_resource_type
  doc: Do not automatically page the responses
  type: string?
  inputBinding:
    prefix: --resource-type
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- hca
- auth
- get-v1-user-owns
