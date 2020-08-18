class: CommandLineTool
id: ../../../nohup.cwl
inputs:
- id: command
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: arg
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- nohup
