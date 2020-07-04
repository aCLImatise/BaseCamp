class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/ifne.cwl
inputs:
- id: n
  doc: ''
  type: boolean
  inputBinding:
    prefix: -n
- id: command
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: args
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- ifne
