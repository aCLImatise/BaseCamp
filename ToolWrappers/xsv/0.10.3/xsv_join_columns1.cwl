class: CommandLineTool
id: xsv_join_columns1.cwl
inputs:
- id: in_input_one
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_xsv
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_columns_two
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: in_join
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- xsv
- join
- columns1
