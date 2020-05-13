class: CommandLineTool
id: strain_ml.cwl
inputs:
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
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
outputs: []
cwlVersion: v1.1
baseCommand:
- strain_ml
