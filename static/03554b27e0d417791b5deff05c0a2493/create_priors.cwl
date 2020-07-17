class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/create_priors.cwl
inputs:
- id: fast_a_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: wiggle_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- create-priors
