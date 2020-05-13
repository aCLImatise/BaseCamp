class: CommandLineTool
id: TIDDIT.py.cwl
inputs:
- id: tidd_it_2110
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: sv
  doc: call structural variation
  type: boolean
  inputBinding:
    prefix: --sv
- id: cov
  doc: generate a coverage bed file
  type: boolean
  inputBinding:
    prefix: --cov
outputs: []
cwlVersion: v1.1
baseCommand:
- TIDDIT.py
