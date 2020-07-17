class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/cram_dump.cwl
inputs:
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: filename_dot_cram
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- cram_dump
