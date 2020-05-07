class: CommandLineTool
id: vsnp_path_adder.py.cwl
inputs:
- id: prog
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: d
  doc: ''
  type: Directory
  inputBinding:
    prefix: -d
- id: s
  doc: ''
  type: boolean
  inputBinding:
    prefix: -s
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- vsnp_path_adder.py
