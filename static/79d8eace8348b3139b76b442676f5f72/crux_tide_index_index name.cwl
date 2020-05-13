class: CommandLineTool
id: crux_tide_index_index name.cwl
inputs:
- id: protein_fast_a_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: index_name
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- crux
- tide-index
- index name
