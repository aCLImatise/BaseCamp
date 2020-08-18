class: CommandLineTool
id: ../../../faPolyASizes.cwl
inputs:
- id: in_dot_fa
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
- faPolyASizes
