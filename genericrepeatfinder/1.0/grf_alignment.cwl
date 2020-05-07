class: CommandLineTool
id: grf_alignment.cwl
inputs:
- id: type
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- grf-alignment
