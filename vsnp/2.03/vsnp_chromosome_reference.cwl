class: CommandLineTool
id: vsnp_chromosome_reference.py.cwl
inputs:
- id: prog
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: w
  doc: ''
  type: string
  inputBinding:
    prefix: -w
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- vsnp_chromosome_reference.py
