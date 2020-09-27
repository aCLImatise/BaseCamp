class: CommandLineTool
id: esl_mixdchlet_sample.cwl
inputs:
- id: in_set_random_seed
  doc: ': set random number seed  [0]'
  type: long
  inputBinding:
    prefix: -s
- id: in__alphabet_size
  doc: ': alphabet size  [20]'
  type: long
  inputBinding:
    prefix: -K
- id: in_number_mixture_components
  doc: ': number of mixture components  [9]'
  type: long
  inputBinding:
    prefix: -Q
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- esl-mixdchlet
- sample
