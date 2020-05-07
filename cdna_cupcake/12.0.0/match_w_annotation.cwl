class: CommandLineTool
id: match_w_annotation.py.cwl
inputs:
- id: match
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: alignment
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: with
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: annotation
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: categorize
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: and
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: report
  doc: ''
  type: string
  inputBinding:
    position: 6
outputs: []
cwlVersion: v1.1
baseCommand:
- match_w_annotation.py
