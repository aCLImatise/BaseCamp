class: CommandLineTool
id: parsec_roles_create_role.cwl
inputs:
- id: in_user_ids
  doc: A list of encoded user IDs to add to the new role
  type: string?
  inputBinding:
    prefix: --user_ids
- id: in_group_ids
  doc: A list of encoded group IDs to add to the new role
  type: string?
  inputBinding:
    prefix: --group_ids
- id: in_role_name
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_description
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0
cwlVersion: v1.1
baseCommand:
- parsec
- roles
- create_role
