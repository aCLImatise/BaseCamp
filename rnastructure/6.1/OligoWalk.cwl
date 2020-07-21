class: CommandLineTool
id: ../../../OligoWalk.cwl
inputs:
- id: _micromolar
  doc: (1.5 micromolar).
  type: boolean
  inputBinding:
    prefix: '-6'
- id: sequence_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: report_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- OligoWalk
