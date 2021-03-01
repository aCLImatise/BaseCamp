class: CommandLineTool
id: ffindex_get.cwl
inputs:
- id: in_use_index_name
  doc: use index of entry instead of entry name
  type: boolean?
  inputBinding:
    prefix: -n
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
- id: in_entry
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_name
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ffindex_get
