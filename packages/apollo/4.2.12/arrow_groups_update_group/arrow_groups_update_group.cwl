class: CommandLineTool
id: arrow_groups_update_group.cwl
inputs:
- id: in_group_id
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_new_name
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
- update_group
