class: CommandLineTool
id: ../../../faToFastq.cwl
inputs:
- id: qual
  doc: quality letter to use.  Default is '<' which is good I think....
  type: string
  inputBinding:
    prefix: -qual
- id: in_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_dot_fast_q
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- faToFastq
