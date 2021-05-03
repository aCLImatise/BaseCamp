class: CommandLineTool
id: arrow_groups_update_organism_permissions.cwl
inputs:
- id: in_administrate
  doc: Should the group have administrate privileges
  type: boolean?
  inputBinding:
    prefix: --administrate
- id: in_write
  doc: Should the group have write privileges
  type: boolean?
  inputBinding:
    prefix: --write
- id: in_read
  doc: Should the group have read privileges
  type: boolean?
  inputBinding:
    prefix: --read
- id: in_export
  doc: Should the group have export privileges
  type: boolean?
  inputBinding:
    prefix: --export
- id: in_group
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_organism_name
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
  dockerPull: quay.io/biocontainers/apollo:4.2.12--pyh5e36f6f_0
cwlVersion: v1.1
baseCommand:
- arrow
- groups
- update_organism_permissions
