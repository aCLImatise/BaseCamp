class: CommandLineTool
id: contree.cwl
inputs:
- id: f
  doc: as last argument).
  type: string
  inputBinding:
    prefix: -f
- id: output
  doc: (default w).
  type: string
  inputBinding:
    prefix: --output
- id: calculate_support
  doc: .
  type: boolean
  inputBinding:
    prefix: --calculate_support
outputs: []
cwlVersion: v1.1
baseCommand:
- contree
