class: CommandLineTool
id: overlapStats.cwl
inputs:
- id: in_var_0
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: in_var_1
  doc: ''
  type: string
  inputBinding:
    prefix: -O
- id: in_g
  doc: ''
  type: string
  inputBinding:
    prefix: -G
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- overlapStats
