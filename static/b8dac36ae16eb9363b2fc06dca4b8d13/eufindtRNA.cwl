class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/eufindtRNA.cwl
inputs:
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: sequence_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- eufindtRNA
