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
hints: []
cwlVersion: v1.1
baseCommand:
- arrow
- groups
- update_group
