class: CommandLineTool
id: ../../../SweepFinder2.cwl
inputs:
- id: to
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: get
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: frequency
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: spectrum
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- SweepFinder2
