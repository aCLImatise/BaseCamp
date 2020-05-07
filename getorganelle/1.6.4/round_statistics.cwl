class: CommandLineTool
id: round_statistics.py.cwl
inputs:
- id: f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
- id: d
  doc: ''
  type: string
  inputBinding:
    prefix: -d
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- round_statistics.py
