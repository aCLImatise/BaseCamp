class: CommandLineTool
id: primer_average.py.cwl
inputs:
- id: p1
  doc: ''
  type: string
  inputBinding:
    prefix: --p1
- id: p2
  doc: ''
  type: string
  inputBinding:
    prefix: --p2
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- primer_average.py
