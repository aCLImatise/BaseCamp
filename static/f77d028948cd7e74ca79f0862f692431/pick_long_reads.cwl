class: CommandLineTool
id: ../../../pick_long_reads.cwl
inputs:
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: length
  doc: ''
  type: long
  inputBinding:
    prefix: --length
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- pick_long_reads
