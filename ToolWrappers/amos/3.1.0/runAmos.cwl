class: CommandLineTool
id: runAmos.cwl
inputs:
- id: in_allows_variables_defined
  doc: "allows variables to be defined outside of the conf file.\nmultiple such options\
    \ are allowed"
  type: File?
  inputBinding:
    prefix: -D
- id: in_c
  doc: ''
  type: File?
  inputBinding:
    prefix: -C
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- runAmos
