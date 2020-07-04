class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/crux_subtract_index.cwl
inputs:
- id: tide_index_one
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: tide_index_two
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
