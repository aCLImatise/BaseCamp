class: CommandLineTool
id: ../../../cram_filter.cwl
inputs:
- id: in_dot_cram
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_dot_cram
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- cram_filter
