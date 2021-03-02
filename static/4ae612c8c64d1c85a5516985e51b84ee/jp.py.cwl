class: CommandLineTool
id: jp.py.cwl
inputs:
- id: in_filename
  doc: "The filename containing the input data. If a filename\nis not given then data\
    \ is read from stdin."
  type: File?
  inputBinding:
    prefix: --filename
- id: in_ast
  doc: Pretty print the AST, do not search the data.
  type: boolean?
  inputBinding:
    prefix: --ast
- id: in_expression
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- jp.py
