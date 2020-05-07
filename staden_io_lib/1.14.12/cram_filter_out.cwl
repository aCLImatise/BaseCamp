class: CommandLineTool
id: cram_filter_out.cram.cwl
inputs:
- id: in_cram
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_cram
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- cram_filter
- out.cram
