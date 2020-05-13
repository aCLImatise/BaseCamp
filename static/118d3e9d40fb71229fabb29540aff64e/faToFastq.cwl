class: CommandLineTool
id: faToFastq.cwl
inputs:
- id: in_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_fast_q
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: qual
  doc: quality letter to use.  Default is '<' which is good I think....
  type: string
  inputBinding:
    prefix: -qual
outputs: []
cwlVersion: v1.1
baseCommand:
- faToFastq
