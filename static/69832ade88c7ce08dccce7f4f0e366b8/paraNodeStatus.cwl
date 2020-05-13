class: CommandLineTool
id: paraNodeStatus.cwl
inputs:
- id: machine_list
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: long
  doc: List details of current and recent jobs.
  type: boolean
  inputBinding:
    prefix: -long
outputs: []
cwlVersion: v1.1
baseCommand:
- paraNodeStatus
