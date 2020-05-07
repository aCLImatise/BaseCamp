class: CommandLineTool
id: fastqToFa.cwl
inputs:
- id: in_fast_q
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: verbose
  doc: =2 - set warning level to get some stats output during processing
  type: boolean
  inputBinding:
    prefix: -verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- fastqToFa
