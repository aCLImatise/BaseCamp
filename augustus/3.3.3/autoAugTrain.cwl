class: CommandLineTool
id: ../../../autoAugTrain.pl.cwl
inputs:
- id: training_set
  doc: ''
  type: string
  inputBinding:
    prefix: --trainingset
- id: species
  doc: ''
  type: string
  inputBinding:
    prefix: --species
outputs: []
cwlVersion: v1.1
baseCommand:
- autoAugTrain.pl
