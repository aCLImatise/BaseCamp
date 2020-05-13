class: CommandLineTool
id: Fido_graph file_gamma_alpha.cwl
inputs:
- id: beta
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- Fido
- graph file
- gamma
- alpha
