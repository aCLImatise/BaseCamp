class: CommandLineTool
id: ../../../msp.cwl
inputs:
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
- msp
