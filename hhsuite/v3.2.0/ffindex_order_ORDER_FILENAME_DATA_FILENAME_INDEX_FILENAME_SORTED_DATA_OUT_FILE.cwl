class: CommandLineTool
id: ffindex_order_ORDER_FILENAME_DATA_FILENAME_INDEX_FILENAME_SORTED_DATA_OUT_FILE.cwl
inputs:
- id: sorted_index_out_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- ffindex_order
- ORDER_FILENAME
- DATA_FILENAME
- INDEX_FILENAME
- SORTED_DATA_OUT_FILE
