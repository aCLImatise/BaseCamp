class: CommandLineTool
id: encguess.cwl
inputs:
- id: in_specify_list_test
  doc: "specify a list of \"suspect encoding types\" to test, seperated by\neither\
    \ \":\" or \",\""
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_output_list_param
  doc: "output a list of all acceptable encoding types that can be used with\nthe\
    \ -s param"
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_suppress_display_unidentified
  doc: suppress display of unidentified types
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_examples
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_var_4
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_var_5
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- encguess
