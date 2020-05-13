class: CommandLineTool
id: crux_subtract_index_tide index 1_output index.cwl
inputs:
- id: tide_index_2
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_index
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- crux
- subtract-index
- tide index 1
- output index
