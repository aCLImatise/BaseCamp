class: CommandLineTool
id: fuma.cwl
inputs:
- id: in_m
  doc: ''
  type: string
  inputBinding:
    prefix: -m
- id: in_formats
  doc: ''
  type: boolean
  inputBinding:
    prefix: --formats
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -V
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fuma
