class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/probability.cwl
inputs:
- id: separation_std_dev
  doc: The standard deviation of the mean length of the separation
  type: long
  inputBinding:
    prefix: --separation-std-dev
- id: use_mates
  doc: Calculate mate-pair probability.
  type: boolean
  inputBinding:
    prefix: --use-mates
- id: option_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- probability
