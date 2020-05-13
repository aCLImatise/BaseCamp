class: CommandLineTool
id: vsnp_reference_options.py.cwl
inputs:
- id: prog
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: s
  doc: ''
  type: string
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
- vsnp_reference_options.py
