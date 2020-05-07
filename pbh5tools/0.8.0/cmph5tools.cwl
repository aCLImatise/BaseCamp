class: CommandLineTool
id: cmph5tools.py_validate.cwl
inputs:
- id: input_cmph5
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- cmph5tools.py
- validate
