class: CommandLineTool
id: hca_auth_get_v1_group_users.cwl
inputs:
- id: in_group_id
  doc: "The name of the group.\n--next-token NEXT_TOKEN\n--per-page PER_PAGE\n--no-paginate\
    \         Do not automatically page the responses\n"
  type: string
  inputBinding:
    prefix: --group-id
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hca
- auth
- get-v1-group-users
