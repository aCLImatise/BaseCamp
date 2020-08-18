class: CommandLineTool
id: ../../../etraining.cwl
inputs:
- id: species
  doc: ''
  type: string
  inputBinding:
    prefix: --species
- id: train_filename
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- etraining
