class: CommandLineTool
id: ../../../paraNodeStatus.cwl
inputs:
- id: long
  doc: List details of current and recent jobs.
  type: boolean
  inputBinding:
    prefix: -long
- id: machine_list
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- paraNodeStatus
