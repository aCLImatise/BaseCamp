class: CommandLineTool
id: bft.cwl
inputs:
- id: in_build
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_k
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bft
