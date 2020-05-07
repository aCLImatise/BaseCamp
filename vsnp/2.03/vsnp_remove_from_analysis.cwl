class: CommandLineTool
id: vsnp_remove_from_analysis.py.cwl
inputs:
- id: prog
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
- id: w
  doc: ''
  type: string
  inputBinding:
    prefix: -w
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
- vsnp_remove_from_analysis.py
