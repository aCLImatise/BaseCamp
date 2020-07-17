class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/simkaCountProcess.cwl
inputs:
- id: nohup
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: command
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: arg
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- simkaCountProcess
