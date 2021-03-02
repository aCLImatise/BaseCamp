class: CommandLineTool
id: pbsa.cwl
inputs:
- id: in_var_0
  doc: ''
  type: string?
  inputBinding:
    prefix: -o
- id: in_i
  doc: ''
  type: string?
  inputBinding:
    prefix: -i
- id: in_var_2
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -O
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- pbsa
