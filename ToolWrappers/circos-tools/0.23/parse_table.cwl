class: CommandLineTool
id: parse_table.cwl
inputs:
- id: in_cat
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_table_dot_txt
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
- parse-table
