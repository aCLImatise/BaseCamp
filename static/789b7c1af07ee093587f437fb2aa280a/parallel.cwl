class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/parallel.cwl
inputs:
- id: command
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: arguments
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- parallel
