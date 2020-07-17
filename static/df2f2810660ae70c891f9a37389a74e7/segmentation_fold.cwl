class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/segmentation_fold.cwl
inputs:
- id: s
  doc: ''
  type: boolean
  inputBinding:
    prefix: -s
- id: sequence
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- segmentation-fold
