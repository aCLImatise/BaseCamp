class: CommandLineTool
id: ../../../overlap_align.cwl
inputs:
- id: fast_a_one
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fast_a_two
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- overlap-align
