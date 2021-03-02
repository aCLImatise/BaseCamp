class: CommandLineTool
id: ffindex_unpack.cwl
inputs:
- id: in_data_filename
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_index_filename
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_out_dir
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ffindex_unpack
