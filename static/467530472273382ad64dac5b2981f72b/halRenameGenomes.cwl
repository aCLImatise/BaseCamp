class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/halRenameGenomes.cwl
inputs:
- id: hal_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: rename_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- halRenameGenomes
