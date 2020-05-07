class: CommandLineTool
id: crux_subtract_index_output index.cwl
inputs:
- id: tide_index_1
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: tide_index_2
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_index
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- crux
- subtract-index
- output index
