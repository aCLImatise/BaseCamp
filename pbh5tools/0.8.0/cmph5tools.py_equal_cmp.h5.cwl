class: CommandLineTool
id: cmph5tools.py_equal_cmp.h5.2.cwl
inputs:
- id: cmph51
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: cmph52
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- cmph5tools.py
- equal
- cmp.h5.2
