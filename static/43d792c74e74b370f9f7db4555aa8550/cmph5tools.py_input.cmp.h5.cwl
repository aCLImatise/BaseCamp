class: CommandLineTool
id: cmph5tools.py_input.cmp.h5.cwl
inputs:
- id: in_debug
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_profile
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --profile
- id: in_verbose
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_c_mph_five_tools_do_tpy
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- cmph5tools.py
- input.cmp.h5
