class: CommandLineTool
id: cram_filter_in.cram.cwl
inputs:
- id: out_cram
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- cram_filter
- in.cram
