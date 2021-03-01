class: CommandLineTool
id: arrow_groups_create_group.cwl
inputs:
- id: in_name
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- arrow
- groups
- create_group
