class: CommandLineTool
id: Fido_gamma.cwl
inputs:
- id: graph_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: gamma
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: alpha
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: beta
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- Fido
- gamma
