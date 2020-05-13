class: CommandLineTool
id: ambtest.cwl
inputs:
- id: seq_file_in
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: m
  doc: ''
  type: string
  inputBinding:
    prefix: -m
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
outputs: []
cwlVersion: v1.1
baseCommand:
- ambtest
