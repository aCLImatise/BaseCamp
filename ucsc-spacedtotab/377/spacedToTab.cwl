class: CommandLineTool
id: spacedToTab.cwl
inputs:
- id: in_txt
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_tab
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: sizes
  doc: ',Y,Z - Force it to have columns of the given widths. The final char in each
    column should be space or newline'
  type: string
  inputBinding:
    prefix: -sizes
outputs: []
cwlVersion: v1.1
baseCommand:
- spacedToTab
