class: CommandLineTool
id: arrow_groups_delete_group.cwl
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
hints: []
cwlVersion: v1.1
baseCommand:
- arrow
- groups
- delete_group
