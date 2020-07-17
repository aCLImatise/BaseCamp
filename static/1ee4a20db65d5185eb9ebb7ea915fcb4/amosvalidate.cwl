class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/amosvalidate.cwl
inputs:
- id: use_clear_range
  doc: '=<n>   Use the clear range of the reads? (0:no 1:yes, default: 1)'
  type: string
  inputBinding:
    prefix: -D
- id: amos_bank
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- amosvalidate
