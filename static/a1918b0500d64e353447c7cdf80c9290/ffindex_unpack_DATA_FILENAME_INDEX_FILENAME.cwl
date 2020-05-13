class: CommandLineTool
id: ffindex_unpack_DATA_FILENAME_INDEX_FILENAME.cwl
inputs:
- id: out_dir
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- ffindex_unpack
- DATA_FILENAME
- INDEX_FILENAME
