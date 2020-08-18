class: CommandLineTool
id: ../../../sleep.cwl
inputs:
- id: number
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: suffix
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- sleep
