class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/annotate.cwl
inputs:
- id: gap_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: data_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- annotate
