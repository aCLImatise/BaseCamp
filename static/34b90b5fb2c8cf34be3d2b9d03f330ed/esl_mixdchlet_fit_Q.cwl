class: CommandLineTool
id: ../../../esl_mixdchlet_fit_Q.cwl
inputs:
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: k
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_count_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: out_mix_dch_let
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- esl-mixdchlet
- fit
- Q
