class: CommandLineTool
id: fileMerger.py.cwl
inputs:
- id: i
  doc: ''
  type: string[]
  inputBinding:
    prefix: -i
- id: f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- fileMerger.py
