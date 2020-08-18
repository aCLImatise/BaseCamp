class: CommandLineTool
id: ../../../strain_ml.cwl
inputs:
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: ml_train
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: training_set_files
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- strain_ml
