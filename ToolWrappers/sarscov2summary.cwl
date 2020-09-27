class: CommandLineTool
id: sarscov2summary.cwl
inputs:
- id: in_p
  doc: ''
  type: string
  inputBinding:
    prefix: -p
- id: in_m
  doc: ''
  type: string
  inputBinding:
    prefix: -m
- id: in_f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
- id: in_s
  doc: ''
  type: string
  inputBinding:
    prefix: -s
- id: in_o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- sarscov2summary
