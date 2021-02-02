class: CommandLineTool
id: arrow_groups_show_group.cwl
inputs:
- id: in_group_id
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- arrow
- groups
- show_group
