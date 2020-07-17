class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mdust.cwl
inputs:
- id: w
  doc: ''
  type: string
  inputBinding:
    prefix: -w
- id: v
  doc: ''
  type: string
  inputBinding:
    prefix: -v
- id: fast_a_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- mdust
