class: CommandLineTool
id: vsnp_file_management.py.cwl
inputs:
- id: prog
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: g
  doc: ''
  type: string
  inputBinding:
    prefix: -g
- id: e
  doc: ''
  type: string
  inputBinding:
    prefix: -e
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- vsnp_file_management.py
