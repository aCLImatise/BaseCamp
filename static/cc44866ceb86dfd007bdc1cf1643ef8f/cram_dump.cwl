class: CommandLineTool
id: cram_dump.cwl
inputs:
- id: filename_cram
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- cram_dump
