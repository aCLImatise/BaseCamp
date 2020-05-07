class: CommandLineTool
id: get_simple_cycs.py.cwl
inputs:
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: m
  doc: ''
  type: long
  inputBinding:
    prefix: -m
outputs: []
cwlVersion: v1.1
baseCommand:
- get_simple_cycs.py
