class: CommandLineTool
id: merTrimApply.cwl
inputs:
- id: in_var_0
  doc: ''
  type: string?
  inputBinding:
    prefix: -l
- id: in_g
  doc: ''
  type: string?
  inputBinding:
    prefix: -g
- id: in_var_2
  doc: ''
  type: string?
  inputBinding:
    prefix: -L
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- merTrimApply
