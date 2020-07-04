class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/specialk.cwl
inputs:
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: s
  doc: ''
  type: string
  inputBinding:
    prefix: -s
- id: reads_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- specialk
