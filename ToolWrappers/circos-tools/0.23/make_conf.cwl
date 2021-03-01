class: CommandLineTool
id: make_conf.cwl
inputs:
- id: in_cat
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_parsed_table_dot_txt
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- make-conf
