class: CommandLineTool
id: Fido_graph file_beta.cwl
inputs:
- id: gamma
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: alpha
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: beta
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- Fido
- graph file
- beta
