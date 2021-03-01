class: CommandLineTool
id: Fido.cwl
inputs:
- id: in_graph_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_gamma
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_alpha
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_beta
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- Fido
