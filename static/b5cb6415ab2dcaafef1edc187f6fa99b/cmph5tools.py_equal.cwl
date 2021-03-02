class: CommandLineTool
id: cmph5tools.py_equal.cwl
inputs:
- id: in_cmp_doth_five_dot_one
  doc: filename 1
  type: double
  inputBinding:
    position: 0
- id: in_cmp_doth_five_dot_two
  doc: filename 2
  type: double
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- cmph5tools.py
- equal
