class: CommandLineTool
id: mimodd_index_FILE_TO_INDEX.cwl
inputs:
- id: in_s
  doc: ''
  type: long
  inputBinding:
    prefix: -s
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: in_q
  doc: ''
  type: boolean
  inputBinding:
    prefix: -q
- id: in_t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
- id: in_o
  doc: ''
  type: File
  inputBinding:
    prefix: -o
- id: in_index
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mimodd
- index
- FILE_TO_INDEX
