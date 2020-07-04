class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/caper.cwl
inputs:
- id: conf
  doc: Specify config file
  type: File
  inputBinding:
    prefix: --conf
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- caper
