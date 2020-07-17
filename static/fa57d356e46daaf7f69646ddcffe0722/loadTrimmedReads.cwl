class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/loadTrimmedReads.cwl
inputs:
- id: s
  doc: ''
  type: string
  inputBinding:
    prefix: -S
- id: c
  doc: ''
  type: string
  inputBinding:
    prefix: -c
outputs: []
cwlVersion: v1.1
baseCommand:
- loadTrimmedReads
