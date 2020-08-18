class: CommandLineTool
id: ../../../esl_mixdchlet_sample.cwl
inputs:
- id: set_number_seed
  doc: ': set random number seed  [0]'
  type: string
  inputBinding:
    prefix: -s
- id: _alphabet_size
  doc: ': alphabet size  [20]'
  type: string
  inputBinding:
    prefix: -K
- id: number_mixture_components
  doc: ': number of mixture components  [9]'
  type: string
  inputBinding:
    prefix: -Q
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
outputs: []
cwlVersion: v1.1
baseCommand:
- esl-mixdchlet
- sample
