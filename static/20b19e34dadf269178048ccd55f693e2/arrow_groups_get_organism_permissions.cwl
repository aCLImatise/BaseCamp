class: CommandLineTool
id: arrow_groups_get_organism_permissions.cwl
inputs:
- id: in_group
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
  dockerPull: quay.io/biocontainers/apollo:4.2.11--pyh5e36f6f_0
cwlVersion: v1.1
baseCommand:
- arrow
- groups
- get_organism_permissions
