class: CommandLineTool
id: ffindex_order_INDEX_FILENAME.cwl
inputs:
- id: order_filename
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: data_filename
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: index_filename
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: sorted_data_out_file
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: sorted_index_out_file
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- ffindex_order
- INDEX_FILENAME
