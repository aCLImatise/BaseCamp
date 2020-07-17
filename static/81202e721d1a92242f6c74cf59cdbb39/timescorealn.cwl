class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/timescorealn.cwl
inputs:
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: test
  doc: ''
  type: string
  inputBinding:
    prefix: -test
- id: ref
  doc: ''
  type: string
  inputBinding:
    prefix: -ref
- id: program
  doc: ''
  type: string
  inputBinding:
    prefix: -program
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- timescorealn
