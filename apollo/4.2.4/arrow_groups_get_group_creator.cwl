class: CommandLineTool
id: ../../../arrow_groups_get_group_creator.cwl
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
cwlVersion: v1.1
baseCommand:
- arrow
- groups
- get_group_creator
