class: CommandLineTool
id: mprobability.cwl
inputs:
- id: option
  doc: ''
  type: string
  inputBinding:
    position: 0
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
outputs: []
cwlVersion: v1.1
baseCommand:
- mprobability
