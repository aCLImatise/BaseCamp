class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/esl_mixdchlet_fit.cwl
inputs:
- id: set_random_seed
  doc: ': set random number seed to <n>  [0]'
  type: string
  inputBinding:
    prefix: -s
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
outputs: []
cwlVersion: v1.1
baseCommand:
- esl-mixdchlet
- fit
