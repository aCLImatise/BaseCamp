class: CommandLineTool
id: Fexact.cwl
inputs:
- id: in_i
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_j
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_k
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_l
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
- Fexact
