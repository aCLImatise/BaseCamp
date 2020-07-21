class: CommandLineTool
id: ../../../fastqToFa.cwl
inputs:
- id: verbose
  doc: '- set warning level to get some stats output during processing'
  type: string
  inputBinding:
    prefix: -verbose
- id: in_dot_fast_q
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- fastqToFa
