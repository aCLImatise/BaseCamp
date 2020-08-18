class: CommandLineTool
id: ../../../spacedToTab.cwl
inputs:
- id: sizes
  doc: ',Y,Z - Force it to have columns of the given widths. The final char in each
    column should be space or newline'
  type: string
  inputBinding:
    prefix: -sizes
- id: in_dot_txt
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_dot_tab
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- spacedToTab
