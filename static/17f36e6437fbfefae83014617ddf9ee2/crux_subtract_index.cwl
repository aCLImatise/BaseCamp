class: CommandLineTool
id: crux_subtract_index.cwl
inputs:
- id: in_tide_index_one
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_tide_index_two
  doc: ''
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- crux
- subtract-index
