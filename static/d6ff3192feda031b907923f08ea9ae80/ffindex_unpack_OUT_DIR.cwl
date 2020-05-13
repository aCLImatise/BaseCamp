class: CommandLineTool
id: ffindex_unpack_OUT_DIR.cwl
inputs:
- id: data_filename
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: index_filename
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: out_dir
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- ffindex_unpack
- OUT_DIR
