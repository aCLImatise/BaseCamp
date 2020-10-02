class: CommandLineTool
id: al2.cwl
inputs:
- id: in_al
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_sources
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
- al2
