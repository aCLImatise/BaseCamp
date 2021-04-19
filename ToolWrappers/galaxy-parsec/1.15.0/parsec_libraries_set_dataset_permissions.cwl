class: CommandLineTool
id: parsec_libraries_set_dataset_permissions.cwl
inputs:
- id: in_access_in
  doc: list of role ids
  type: string?
  inputBinding:
    prefix: --access_in
- id: in_modify_in
  doc: list of role ids
  type: string?
  inputBinding:
    prefix: --modify_in
- id: in_manage_in
  doc: list of role ids
  type: string?
  inputBinding:
    prefix: --manage_in
- id: in_dataset_id
  doc: ''
  type: string
  inputBinding:
    position: 0
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
- libraries
- set_dataset_permissions
