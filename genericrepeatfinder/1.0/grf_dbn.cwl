class: CommandLineTool
id: grf_dbn.cwl
inputs:
- id: input_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_dbn
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- grf-dbn
