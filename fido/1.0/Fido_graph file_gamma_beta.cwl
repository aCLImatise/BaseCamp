class: CommandLineTool
id: Fido_graph file_gamma_beta.cwl
inputs:
- id: alpha
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: beta
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- Fido
- graph file
- gamma
- beta
