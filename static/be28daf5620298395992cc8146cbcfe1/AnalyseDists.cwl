class: CommandLineTool
id: ../../../AnalyseDists.cwl
inputs:
- id: x
  doc: ''
  type: boolean
  inputBinding:
    prefix: -X
- id: analyse_dist
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: swn
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- AnalyseDists
