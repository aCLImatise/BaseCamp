class: CommandLineTool
id: ../../../ffindex_order.cwl
inputs:
- id: in_order_filename
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_data_filename
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_index_filename
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_sorted_data_out_file
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_sorted_index_out_file
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ffindex_order
