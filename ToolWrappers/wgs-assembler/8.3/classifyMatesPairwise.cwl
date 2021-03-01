class: CommandLineTool
id: classifyMatesPairwise.cwl
inputs:
- id: in_test
  doc: ''
  type: string?
  inputBinding:
    prefix: -test
- id: in_trusted
  doc: ''
  type: string?
  inputBinding:
    prefix: -trusted
- id: in_var_2
  doc: ''
  type: string?
  inputBinding:
    prefix: -o
- id: in_var_3
  doc: ''
  type: string?
  inputBinding:
    prefix: -O
- id: in_g
  doc: ''
  type: string?
  inputBinding:
    prefix: -G
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- classifyMatesPairwise
