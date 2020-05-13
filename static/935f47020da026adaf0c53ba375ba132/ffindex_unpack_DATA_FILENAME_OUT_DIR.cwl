class: CommandLineTool
id: ffindex_unpack_DATA_FILENAME_OUT_DIR.cwl
inputs:
- id: index_filename
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_dir
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- ffindex_unpack
- DATA_FILENAME
- OUT_DIR
