class: CommandLineTool
id: ../../../atropos.cwl
inputs:
- id: in_se
  doc: ''
  type: string
  inputBinding:
    prefix: -se
- id: in_o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: in_a
  doc: ''
  type: string
  inputBinding:
    prefix: -a
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- atropos
