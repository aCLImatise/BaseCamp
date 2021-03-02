class: CommandLineTool
id: findphyl.cwl
inputs:
- id: in_limit
  doc: ''
  type: string?
  inputBinding:
    prefix: --limit
- id: in_rate_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_col_file
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- findphyl
