class: CommandLineTool
id: crux_subtract_index_tide index 1_tide index 2.cwl
inputs:
- id: output_index
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- crux
- subtract-index
- tide index 1
- tide index 2
