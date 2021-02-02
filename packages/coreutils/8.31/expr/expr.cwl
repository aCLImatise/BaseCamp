class: CommandLineTool
id: expr.cwl
inputs:
- id: in_expression
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
- expr
